cask "xds-code" do
  version "0.9.4"

  on_arm do
    sha256 "37eda62a5d80996331b10566b7a59ecc2e48eee9070204ea7393251450aa1efe"

    url "https://github.com/XDPXI/XDs-Code/releases/download/#{version}/xds-code_#{version}_macos-aarch64.dmg",
        verified: "github.com"
  end

  on_intel do
    sha256 "dcb994ea4714e15a9750a22e21aba2b8f7c6ea9d0ca04fc16f67bea78b4a709d"

    url "https://github.com/XDPXI/XDs-Code/releases/download/#{version}/xds-code_#{version}_macos-x64.dmg",
        verified: "github.com"
  end

  name "XD's Code"
  desc "XD's Code is a code editor that is inspired by Zed and VSC made using Tauri."
  homepage "https://github.com/XDPXI/XDs-Code"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "xds-code.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: [
                     "-d",
                     "com.apple.quarantine",
                     "#{appdir}/xds-code.app",
                   ],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/dev.xdpxi.xds-code.plist",
    "~/Library/Preferences/xds-code.plist",

    "~/Library/Application Support/dev.xdpxi.xds-code",
    "~/Library/Application Support/dev.xdpxi.xds-code/*",
    "~/Library/Application Support/xds-code/",
    "~/Library/Application Support/xds-code/*",

    "~/Library/Caches/dev.xdpxi.xds-code",
    "~/Library/Caches/dev.xdpxi.xds-code/*",
    "~/Library/Caches/xds-code",
    "~/Library/Caches/xds-code/*",

    "~/Library/WebKit/dev.xdpxi.xds-code",
    "~/Library/WebKit/dev.xdpxi.xds-code/*",
    "~/Library/WebKit/xds-code",
    "~/Library/WebKit/xds-code/*",
  ]
end
