cask "xds-code" do
  version "0.7.4"

  on_arm do
    sha256 "B6E6E22D198152E7BC14E3B577BF2F222F7DA37C5E6D45DEFF5935D42C2E4B6F"

    url "https://github.com/XDPXI/XDs-Code/releases/download/#{version}/xds-code_#{version}_macos-aarch64.dmg",
        verified: "github.com"
  end

  on_intel do
    sha256 "1066D6F4B310698B60D89115C239DB18440958977FB5F53361E160A94ACD746C"

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
