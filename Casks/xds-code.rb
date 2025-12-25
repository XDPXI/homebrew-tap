cask "xds-code" do
  version "0.7.5"

  on_arm do
    sha256 "47E01864033F44444341B9ABEE323DB5A34FD2B203EA4FA883037E9952F2A0C7"

    url "https://github.com/XDPXI/XDs-Code/releases/download/#{version}/xds-code_#{version}_macos-aarch64.dmg",
        verified: "github.com"
  end

  on_intel do
    sha256 "96B985BF1A804930FA7BAB621BBB069009B59D006769FC06EEB54FEFA79D2C8A"

    url "https://github.com/XDPXI/XDs-Code/releases/download/#{version}/xds-code_#{version}_macos-x64.dmg",
        verified: "github.com"
  end

  name "XD's Code"
  desc "XD's Code is a code editor that is inspired by VSC."
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
