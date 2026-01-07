class Sponge < Formula
  desc "A performant programming language"
  homepage "https://sponge.xdpxi.dev"
  license "MIT"
  version "1.1.0"

  depends_on "sdl2"

  on_macos do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/#{version}/sponge-#{version}-macos-x86_64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 "CE363F4466A19939BDD1A896072C76886E8A35B1167CD70A7A7FAEFA1C836854"
    end

    on_arm do
      url "http://cdn.xdpxi.net:8716/sponge/#{version}/sponge-#{version}-macos-aarch64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 "3163E57921B7519F02151FAAE24825B2F6C1BF6AF0A56E199C73C6A176DBFD3C"
    end
  end

  on_linux do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/#{version}/sponge-#{version}-linux-x86_64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 "B20FA82A0B861803E3C7ADD0783BEA8A98EBA2130397BCE6E6017373D8685F2E"
    end
  end

  def install
    bin.install "sponge"
  end

  test do
    system "#{bin}/sponge", "-v"
  end
end
