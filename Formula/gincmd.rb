class Gincmd < Formula
  desc "A modern Wine wrapper for macOS built with SwiftUI"
  homepage "https://git.xdpxi.net/xdpxi/Gin"
  license "GPL-3.0-only"
  version "3.0.6"

  url "https://git.xdpxi.net/xdpxi/Gin/releases/download/#{version}/GinCmd.zip",
      verified: "git.xdpxi.net"
  sha256 "d3e1a1f174c986af6165b942ee0bdafa3f75ab9f4977036e766f5cd9ddfbf010"

  def install
    bin.install "GinCmd"
  end
end
