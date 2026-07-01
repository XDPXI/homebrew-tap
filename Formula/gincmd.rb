class Gincmd < Formula
  desc "A modern Wine wrapper for macOS built with SwiftUI"
  homepage "https://git.xdpxi.net/xdpxi/Gin"
  license "GPL-3.0-only"
  version "3.0.3"

  url "https://git.xdpxi.net/xdpxi/Gin/releases/download/#{version}/GinCmd.zip",
      verified: "git.xdpxi.net"
  sha256 "65a1b8349929e863ec2773678f8c4c971c99f68e986438a5c98139c744c633f9"

  def install
    bin.install "GinCmd"
  end
end
