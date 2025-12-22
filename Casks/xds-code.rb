cask "xds-code" do
  version "0.7.3"

  on_arm do
    sha256 "E75E888C766BB9F11EA0FD490BEA61894188D3CC287EC444E860A09A623E0AD6"

    url "https://github.com/XDPXI/XDs-Code/releases/download/#{version}/xds-code_#{version}_macos-aarch64.dmg",
        verified: "github.com"
  end

  on_intel do
    sha256 "4B861639B91F34F384C54F7E5B616AA7EE0BFEC383DF0F9A53B467330C688933"

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
