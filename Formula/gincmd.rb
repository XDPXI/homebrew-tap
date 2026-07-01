class Gincmd < Formula
  desc "A modern Wine wrapper for macOS built with SwiftUI"
  homepage "https://git.xdpxi.net/xdpxi/Gin"
  license "GPL-3.0-only"
  version "3.0.5"

  url "https://git.xdpxi.net/xdpxi/Gin/releases/download/#{version}/GinCmd.zip",
      verified: "git.xdpxi.net"
  sha256 "9dc889f5405d7af65727cd43efedca56a97bcd73981d35ebf0e25f4f936bd666"

  def install
    bin.install "GinCmd"
  end
end
