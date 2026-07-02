cask "gin" do
  name "Gin"
  desc "A modern Wine wrapper for macOS built with SwiftUI"
  homepage "https://git.xdpxi.net/xdpxi/Gin"
  version "3.0.6"

  url "https://git.xdpxi.net/xdpxi/Gin/releases/download/#{version}/Gin.zip",
      verified: "git.xdpxi.net"
  sha256 "22f35422a3ff2bac14bb2b241dd4456dd6e9a61ce2541d965c5efbf6f3694dd1"

  app "Gin.app"

  depends_on formula: "gincmd"

  postflight do
    system_command "/usr/bin/xattr",
                   args: [
                     "-d",
                     "com.apple.quarantine",
                     "#{appdir}/Gin.app",
                   ],
                   sudo: false
  end
end
