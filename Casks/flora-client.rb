cask "flora-client" do
  version "0.6.0"
  sha256 "040b2b180d68dab7bc8ecb5d08baf5b09365282cc6e36ff603eb92484fb08496"

  url "http://cdn.xdpxi.net/flora/version/flora-#{version}-macos.tar.gz"
  name "Flora Client"
  desc "A Minecraft launcher built with .NET and Avalonia"
  homepage "https://github.com/XDPXI/FloraClient"

  livecheck do
    url "https://api.github.com/repos/XDPXI/FloraClient/releases/latest"
    strategy :github_latest
  end

  app "FloraClient.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: [
                     "-d",
                     "com.apple.quarantine",
                     "#{appdir}/FloraClient.app",
                   ],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/FloraClient",
    "~/Library/Preferences/FloraClient*",
  ]
end
