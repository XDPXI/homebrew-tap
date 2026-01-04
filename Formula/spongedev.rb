class Spongedev < Formula
  desc "A performant programming language (development build)"
  homepage "https://sponge.xdpxi.dev"
  license "MIT"

  depends_on "sdl2"
  conflicts_with "sponge"

  VERSION_SHA = "5f25315"
  TIMESTAMP = "2026-01-04-15-35-21-5f25315"
  MACOS_X86_64_SHA = "224E4B1A050760CAED3F499F3DE988CD82CC6CD8270E7F03309229B3F04E3D3F"
  MACOS_AARCH64_SHA = "7267D592910A1505858988B5DA862D6591240A1084366BC2F4664D67FB09FBE6"
  LINUX_SHA = "DA4C0D2D95CBA0219D4BFBC380C863558F458817493B6ADB25472D306DA17FF8"

  version VERSION_SHA

  on_macos do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/dev/#{TIMESTAMP}/sponge-#{VERSION_SHA}-macos-x86_64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 MACOS_X86_64_SHA
    end

    on_arm do
      url "http://cdn.xdpxi.net:8716/sponge/dev/#{TIMESTAMP}/sponge-#{VERSION_SHA}-macos-aarch64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 MACOS_AARCH64_SHA
    end
  end

  on_linux do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/dev/#{TIMESTAMP}/sponge-#{VERSION_SHA}-linux-x86_64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 LINUX_SHA
    end
  end

  def install
    bin.install "sponge"
  end

  test do
    system "#{bin}/sponge", "-v"
  end
end
