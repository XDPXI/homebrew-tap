cask "mono" do
  version "1.4.1.a"
  sha256 "F8E47E69BDE865D381B7F7838E288046935C42F4E51E230E714344302FC2C502"

  url "http://cdn.xdpxi.net:8716/mono/version/#{version}/Mono-MacOS-#{version}.zip",
      verified: "cdn.xdpxi.net"
  name "Mono"
  desc "Monochrome-styled 2D platformer"
  homepage "https://xdpxi.itch.io/mono/"

  livecheck do
    url "http://cdn.xdpxi.net:8716/browse/mono/version/"
    strategy :page_match do |page|
      page.scan(%r{<a href="/browse/mono/version/([^/]+)/"}i).map(&:first)
    end
  end

  app "Mono.app"

  zap trash: [
    "~/Library/Application Support/mono",
  ]
end
