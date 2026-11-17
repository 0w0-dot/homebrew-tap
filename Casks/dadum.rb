cask "dadum" do
  version "1.0.0"
  sha256 "db1bb8c1c197a6a1ff8fe3a700f98ebd3968338e27bf93ccf89e94f0a70a0ec4"

  url "https://github.com/0w0-dot/dadum/releases/download/v#{version}/Dadum-#{version}.zip"
  name "Dadum"
  desc "Checks Korean spelling or translates selected text with Claude"
  homepage "https://github.com/0w0-dot/dadum"

  depends_on macos: :sonoma

  app "Dadum.app"

  # 애플 공증을 받지 않은 앱이라, 설치할 때 macOS의 첫 실행 확인 표시를 지운다.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Dadum.app"]
  end

  uninstall quit: "io.github.0w0-dot.dadum"

  zap trash: "~/Library/Preferences/io.github.0w0-dot.dadum.plist"
end
