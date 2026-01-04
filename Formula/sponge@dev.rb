class Sponge@dev < Formula
  desc "A performant programming language"
  homepage "https://sponge.xdpxi.dev"
  license "MIT"

  depends_on "sdl2"
  conflicts_with "sponge"

  VERSION_SHA = "4e78b9c"
  TIMESTAMP = "2026-01-04-13-20-39-#{VERSION_SHA}"

  version VERSION_SHA

  on_macos do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/dev/#{TIMESTAMP}/sponge-#{VERSION_SHA}-macos-x86_64.tar.gz"
      sha256 :no_check
    end

    on_arm do
      url "http://cdn.xdpxi.net:8716/sponge/dev/#{TIMESTAMP}/sponge-#{VERSION_SHA}-macos-aarch64.tar.gz"
      sha256 :no_check
    end
  end

  on_linux do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/dev/#{TIMESTAMP}/sponge-#{VERSION_SHA}-linux-x86_64.tar.gz"
      sha256 :no_check
    end
  end

  def install
    bin.install "sponge"
  end

  test do
    system "#{bin}/sponge", "-v"
  end
end
