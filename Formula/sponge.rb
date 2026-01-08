class Sponge < Formula
  desc "A performant programming language."
  homepage "https://sponge.xdpxi.dev"
  license "MIT"
  version "1.1.1"

  depends_on "sdl2"

  on_macos do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/#{version}/sponge-#{version}-macos-x86_64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 "4B5AAD119167B0B1A7172C2616E6BB1F269F41B5ABC0F58D02D4EBED66E3706B"
    end

    on_arm do
      url "http://cdn.xdpxi.net:8716/sponge/#{version}/sponge-#{version}-macos-aarch64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 "A34878DF37F3D5649A1FDE2EDADD8F444A55E60E5FFE0E23A25AA3F7A5563106"
    end
  end

  on_linux do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/#{version}/sponge-#{version}-linux-x86_64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 "D7BB2FE859A1A4D74BEE4294F2951B374BAF09F352628ED14CD3DE79426B07FB"
    end
  end

  def install
    bin.install "sponge"
  end

  test do
    system "#{bin}/sponge", "-v"
  end
end
