cask "xds-code" do
  version "0.6.2"

  on_arm do
    sha256 "9030f60bca60f77873771647b9757ddf4adc630fedc84b5bf65891c9e6658c5d"

    url "https://github.com/XDPXI/XDs-Code/releases/download/#{version}/xds-code_#{version}_aarch64_macos.dmg",
        verified: "github.com"
  end

  on_intel do
    sha256 "84476c852da846fb4d00d2a01f80e041b8e9c30b03344bd4a9ef391c3e062f7e"

    url "https://github.com/XDPXI/XDs-Code/releases/download/#{version}/xds-code_#{version}_x64_macos.dmg",
        verified: "github.com"
  end

  name "XD's Code"
  desc "XD's Code is a code editor that is insipred by VSC."
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
