class Spongedev < Formula
  desc "A performant programming language (development build)"
  homepage "https://sponge.xdpxi.dev"
  license "MIT"

  depends_on "sdl2"
  conflicts_with "sponge"

  VERSION_SHA = "ea17922"
  TIMESTAMP = "2026-01-04-15-44-17-ea17922"
  MACOS_X86_64_SHA = "b16e15764b8bc06c5c3f9f19bc8b99fa48e7894aa5a6ccdad65da49bbf564793"
  MACOS_AARCH64_SHA = "b16e15764b8bc06c5c3f9f19bc8b99fa48e7894aa5a6ccdad65da49bbf564793"
  LINUX_SHA = "b16e15764b8bc06c5c3f9f19bc8b99fa48e7894aa5a6ccdad65da49bbf564793"

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
