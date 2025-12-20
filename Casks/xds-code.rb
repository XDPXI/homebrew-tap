cask "xds-code" do
  version "0.7.0"

  on_arm do
    sha256 "7B91A32E78614EE9682A1DB7D7DD11EC3F2F60FEE9C950BE83895B4CF5A1A1E1"

    url "https://github.com/XDPXI/XDs-Code/releases/download/#{version}/xds-code_#{version}_macos-aarch64.dmg",
        verified: "github.com"
  end

  on_intel do
    sha256 "C7EFCA2F65241EC21945B58B7CAD9C6DDDE20CE0E2A4D220E0925E8B80A6301E"

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

  zap trash: [
    "~/Library/Preferences/xds-code.plist",
  ]
end
