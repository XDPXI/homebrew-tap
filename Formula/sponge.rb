class Sponge < Formula
  desc "A performant programming language"
  homepage "https://sponge.xdpxi.dev"
  license "MIT"
  version "1.0.7"

  depends_on "sdl2"

  on_macos do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/#{version}/sponge-#{version}-macos-x86_64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 "5F73C4C354CA999D90CF60BD546EF7B9469BB6EA66F08B52376AB052E340173F"
    end

    on_arm do
      url "http://cdn.xdpxi.net:8716/sponge/#{version}/sponge-#{version}-macos-aarch64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 "F109E5BF4B38A1A4A6EB21BA5D2C523088F8FABEF695CAED3044894BB17F9043"
    end
  end

  on_linux do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/#{version}/sponge-#{version}-linux-x86_64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 "FE8106773B2092FAC81632E06D0EF2C34C091AAAF06AE73B091E017B1086DEEB"
    end
  end

  def install
    bin.install "sponge"
  end

  test do
    system "#{bin}/sponge", "-v"
  end
end
