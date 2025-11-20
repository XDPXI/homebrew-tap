cask "xds-code" do
  version "0.6.2"
  sha256 "9030f60bca60f77873771647b9757ddf4adc630fedc84b5bf65891c9e6658c5d"

  url "https://github.com/XDPXI/XDs-Code/releases/download/#{version}/xds-code_#{version}_aarch64_macos.dmg",
      verified: "github.com"
  name "XD's Code"
  desc "XD's Code is a code editor that is insipred by VSC."
  homepage "https://github.com/XDPXI/XDs-Code"

  livecheck do
    url "https://github.com/XDPXI/XDs-Code/releases"
    strategy :github_latest
    end
  end

  app "ads-code.app"

  zap trash: [
    "~/Library/Preferences/xds-code.plist",
  ]
end
