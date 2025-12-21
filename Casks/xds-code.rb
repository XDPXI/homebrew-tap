cask "xds-code" do
  version "0.7.2"

  on_arm do
    sha256 "CEBD2C1D024C2D99F748C247BBC7678BC4D50BC4F0284AC30134CA313B759F10"

    url "https://github.com/XDPXI/XDs-Code/releases/download/#{version}/xds-code_#{version}_macos-aarch64.dmg",
        verified: "github.com"
  end

  on_intel do
    sha256 "EC20B2FA9FFE4591BF71BAEFFDF9A063821EBB4C9740199381AFD54F9FC73DBB"

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
