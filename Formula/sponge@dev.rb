class SpongeDev < Formula
  desc "A performant programming language"
  homepage "https://sponge.xdpxi.dev"
  license "MIT"

  depends_on "sdl2"
  conflicts_with "sponge"

  def self.latest_dev_sha
    dev_base = "http://cdn.xdpxi.net:8716/sponge/dev/"
    dirs = `curl -s #{dev_base}`.scan(/href="([^"]+)"/).flatten
    valid_dirs = dirs.select { |d| d =~ /\d{4}-\d{2}-\d{2}-\d{2}-\d{2}-\d{2}-[0-9a-f]+\/$/ }
    latest_dir = valid_dirs.sort.last
    raise "No dev builds found!" unless latest_dir
    latest_dir.chomp("/")
  end

  version latest_dev_sha.split("-").last[0..6]

  on_macos do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/dev/#{latest_dev_sha}/sponge-#{version}-macos-x86_64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 :no_check
    end

    on_arm do
      url "http://cdn.xdpxi.net:8716/sponge/dev/#{latest_dev_sha}/sponge-#{version}-macos-aarch64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 :no_check
    end
  end

  on_linux do
    on_intel do
      url "http://cdn.xdpxi.net:8716/sponge/dev/#{latest_dev_sha}/sponge-#{version}-linux-x86_64.tar.gz",
          verified: "cdn.xdpxi.net"
      sha256 :no_check
    end
  end

  livecheck do
    url "http://cdn.xdpxi.net:8716/sponge/dev/"
    regex(%r{href="(\d{4}-\d{2}-\d{2}-\d{2}-\d{2}-\d{2}-([0-9a-f]+))/"}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[1] }.sort.last
    end
  end

  def install
    bin.install "sponge"
  end

  test do
    system "#{bin}/sponge", "-v"
  end
end
