cask "gin" do
  name "Gin"
  desc "A modern Wine wrapper for macOS built with SwiftUI"
  homepage "https://git.xdpxi.net/xdpxi/Gin"
  version "3.0.4"

  url "https://git.xdpxi.net/xdpxi/Gin/releases/download/#{version}/Gin.zip",
      verified: "git.xdpxi.net"
  sha256 "b2ab0ba8c9ec1895a4dfd24e4d0c07ba1b2ea6a6552b74d29da4e048dd3701cb"

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
