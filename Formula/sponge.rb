class Sponge < Formula
  desc "A performant programming language."
  homepage "https://sponge.xdpxi.dev"
  license "MIT"
  version "1.1.3"

  on_macos do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/#{version}/sponge-#{version}-macos-x86_64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 "929299A971A42EE7599FD0F0BFCAD7E2A5AAA268F48185B86B48EDDF2F364287"
    end

    on_arm do
      url "http://cdn.xdpxi.net:8716/sponge/#{version}/sponge-#{version}-macos-aarch64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 "6ECA94C01AAAF5BC2E46E7D877966E0C93A08E2292EDCA6290001AD6202F42AC"
    end
  end

  on_linux do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/#{version}/sponge-#{version}-linux-x86_64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 "C090DC7EBBB583ED9252E626E80527BA10554231964586CC1E5DFE1AB0510728"
    end
  end

  def install
    sponge_bin = Dir["**/sponge"].first
    bin.install sponge_bin
  end

  test do
    system "#{bin}/sponge", "-v"
  end
end
