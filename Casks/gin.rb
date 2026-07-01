cask "gin" do
  name "Gin"
  desc "A modern Wine wrapper for macOS built with SwiftUI"
  homepage "https://git.xdpxi.net/xdpxi/Gin"
  version "3.0.3"

  url "https://git.xdpxi.net/xdpxi/Gin/releases/download/#{version}/Gin.zip",
      verified: "git.xdpxi.net"
  sha256 "d0ef550a26976ef93213fdde1288f46c33714816ca8d8da1a84b4cb50cf05984"

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
