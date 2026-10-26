cask "easyfilm" do
  version "1.0.1"
  sha256 "bc5eb410522e6f80107f66de251da4e2f027b4d0b1ca45cd35564d0f0ebcf30d"

  url "https://github.com/0w0-dot/easyfilm/releases/download/v#{version}/Easyfilm-#{version}.zip"
  name "Easyfilm"
  desc "Wallpaper picker that applies an image with one click"
  homepage "https://github.com/0w0-dot/easyfilm"

  depends_on macos: :sonoma

  app "Easyfilm.app"

  # 애플 공증을 받지 않은 앱이라, 설치할 때 macOS의 첫 실행 확인 표시를 지운다.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Easyfilm.app"]
  end

  uninstall launchctl: "io.github.0w0-dot.easyfilm.helper",
            quit:      [
              "io.github.0w0-dot.easyfilm",
              "io.github.0w0-dot.easyfilm.helper",
            ]

  zap trash: [
    "~/Library/Application Support/io.github.0w0-dot.easyfilm",
    "~/Library/Caches/io.github.0w0-dot.easyfilm.helper",
    "~/Library/HTTPStorages/io.github.0w0-dot.easyfilm.helper",
    "~/Library/HTTPStorages/io.github.0w0-dot.easyfilm.helper.binarycookies",
    "~/Library/Preferences/io.github.0w0-dot.easyfilm.helper.plist",
    "~/Library/Preferences/io.github.0w0-dot.easyfilm.plist",
    "~/Library/WebKit/io.github.0w0-dot.easyfilm.helper",
  ]
end
