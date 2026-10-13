cask "flora-client" do
  version "0.5.0"
  sha256 "2a16a74768b99d1d3e1deb3d68090c6054db186e7b822bb346303b49bfdb637f"

  url "http://cdn.xdpxi.net/flora/version/flora-#{version}-macos.tar.gz"
  name "Flora Client"
  desc "A Minecraft launcher built with .NET and Avalonia"
  homepage "https://github.com/XDPXI/FloraClient"

  livecheck do
    url "https://api.github.com/repos/XDPXI/FloraClient/releases/latest"
    strategy :github_latest
  end

  app "FloraClient.app"

  zap trash: [
    "~/Library/Application Support/FloraClient",
    "~/Library/Preferences/FloraClient*",
  ]
end
