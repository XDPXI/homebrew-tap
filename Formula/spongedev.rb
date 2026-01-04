class Spongedev < Formula
  desc "A performant programming language (development build)"
  homepage "https://sponge.xdpxi.dev"
  license "MIT"

  depends_on "sdl2"
  conflicts_with "sponge"

  VERSION_SHA = "77d28e1"
  TIMESTAMP = "-77d28e1"

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
