cask "mono" do
  version "1.5.0.b"
  sha256 "2b9dda7a2a9f1ebc9749cb0118e04e1dc267b283318126ecd1dbcee43119d8d6"

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
