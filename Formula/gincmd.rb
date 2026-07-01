class Gincmd < Formula
  desc "A modern Wine wrapper for macOS built with SwiftUI"
  homepage "https://git.xdpxi.net/xdpxi/Gin"
  license "GPL-3.0-only"
  version "3.0.4"

  url "https://git.xdpxi.net/xdpxi/Gin/releases/download/#{version}/GinCmd.zip",
      verified: "git.xdpxi.net"
  sha256 "ceb02f19777203b143b935bf6f505f778ec1feef122e7c7bbc44268505f805eb"

  def install
    bin.install "GinCmd"
  end
end
