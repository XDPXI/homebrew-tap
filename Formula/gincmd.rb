class Gincmd < Formula
  desc "A modern Wine wrapper for macOS built with SwiftUI"
  homepage "https://git.xdpxi.net/xdpxi/Gin"
  license "GPL-3.0-only"
  version "3.0.2"

  url "https://git.xdpxi.net/xdpxi/Gin/releases/download/#{version}/GinCmd.zip",
      verified: "git.xdpxi.net"
  sha256 "bcca0f5ba43defa2b1b6f2a53a3a151aaa89b6f4bc245aea1e3b4aced6be5990"

  def install
    bin.install "GinCmd"
  end
end
