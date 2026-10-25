# 0w0-dot 앱 모음

0w0-dot이 만든 맥 앱을 Homebrew로 설치하는 곳.

[English](#english) · [日本語](#日本語)

## 앱

| 앱 | 하는 일 | 설치 |
| --- | --- | --- |
| [Easyfilm](https://github.com/0w0-dot/easyfilm) | 넣어 둔 이미지를 누르면 바로 바탕화면이 바뀐다 | `brew install --cask 0w0-dot/tap/easyfilm` |

## 처음이라면

Homebrew가 없으면 [brew.sh](https://brew.sh)에서 먼저 설치한다. 그다음 위 표의 설치 명령을 터미널에 붙여 넣는다.

## 업데이트와 삭제

- 모두 업데이트: `brew upgrade`
- 지우기: `brew uninstall --cask 앱이름` (예: `easyfilm`)

---

## English

Mac apps by 0w0-dot, installed with Homebrew.

| App | What it does | Install |
| --- | --- | --- |
| [Easyfilm](https://github.com/0w0-dot/easyfilm) | Click an image you've added and it becomes your wallpaper | `brew install --cask 0w0-dot/tap/easyfilm` |

Don't have Homebrew? Install it from [brew.sh](https://brew.sh) first. Update with `brew upgrade`, remove with `brew uninstall --cask <app>`.

## 日本語

0w0-dotが作ったMacアプリを、Homebrewでインストールできます。

| アプリ | できること | インストール |
| --- | --- | --- |
| [Easyfilm](https://github.com/0w0-dot/easyfilm) | 追加した画像をクリックすると、すぐに壁紙になる | `brew install --cask 0w0-dot/tap/easyfilm` |

Homebrewがない場合は、先に[brew.sh](https://brew.sh)からインストールしてください。アップデートは `brew upgrade`、削除は `brew uninstall --cask <アプリ名>`。

---

## 관리 메모

- 새 앱을 올릴 때: `Casks/<앱이름>.rb`를 더하고, 위 세 표에 한 줄씩 더한다.
- Easyfilm의 버전과 확인값은 Easyfilm 저장소의 `release.sh`가 새 버전을 낼 때 고친다.
