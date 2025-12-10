cask "xds-code" do
  version "0.6.3"

  on_arm do
    sha256 "99FF26C940AE2B5229F0AE8FA5893EC463C79FFD389031A0ABC670B4747636DB"

    url "https://github.com/XDPXI/XDs-Code/releases/download/#{version}/xds-code_#{version}_macos-aarch64.dmg",
        verified: "github.com"
  end

  on_intel do
    sha256 "D71011B8FA74AC74BBBC7BC8531BC4E68CDB798D0459FF1CB9239F2C018A343C"

    url "https://github.com/XDPXI/XDs-Code/releases/download/#{version}/xds-code_#{version}_macos-x64.dmg",
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
