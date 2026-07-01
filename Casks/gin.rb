cask "gin" do
  name "Gin"
  desc "A modern Wine wrapper for macOS built with SwiftUI"
  homepage "https://git.xdpxi.net/xdpxi/Gin"
  version "3.0.1"

  url "https://git.xdpxi.net/xdpxi/Gin/releases/download/#{version}/Gin.zip",
      verified: "git.xdpxi.net"
  sha256 "05D1A30A2A1F5ACED3CEC4FE22315B3A6F220F4AFD6ABAA58ED6BF9501133765"

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
