cask "xds-code" do
  version "0.8.0"

  on_arm do
    sha256 "5f21e1f3cae2a71f5e0af1c6bfa3607e4dbe991a74d728ede39836f5ccbb674b"

    url "https://github.com/XDPXI/XDs-Code/releases/download/#{version}/xds-code_#{version}_macos-aarch64.dmg",
        verified: "github.com"
  end

  on_intel do
    sha256 "9f2d1110670296753700ac2d82ee4441ceff91e8fa40050516e9dec0dc63dd0e"

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
