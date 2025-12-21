cask "xds-code" do
  version "0.7.1"

  on_arm do
    sha256 "7C8F0E94C9A357F357075965B0881AF658BE019E1331EBA759A53093418CCD36"

    url "https://github.com/XDPXI/XDs-Code/releases/download/#{version}/xds-code_#{version}_macos-aarch64.dmg",
        verified: "github.com"
  end

  on_intel do
    sha256 "F6642664F78B6FB45C7146965680FC95A8B811834C201727E68A6FC60B22CCEC"

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
