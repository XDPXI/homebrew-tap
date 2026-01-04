class Sponge < Formula
  desc "A performant programming language"
  homepage "https://sponge.xdpxi.dev"
  license "MIT"
  version "1.0.6"

  depends_on "sdl2"
  conflicts_with "spongedev"

  on_macos do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/#{version}/sponge-#{version}-macos-x86_64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 "224E4B1A050760CAED3F499F3DE988CD82CC6CD8270E7F03309229B3F04E3D3F"
    end

    on_arm do
      url "http://cdn.xdpxi.net:8716/sponge/#{version}/sponge-#{version}-macos-aarch64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 "7267D592910A1505858988B5DA862D6591240A1084366BC2F4664D67FB09FBE6"
    end
  end

  on_linux do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/#{version}/sponge-#{version}-linux-x86_64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 "DA4C0D2D95CBA0219D4BFBC380C863558F458817493B6ADB25472D306DA17FF8"
    end
  end

  def install
    bin.install "sponge"
  end

  test do
    system "#{bin}/sponge", "-v"
  end
end
