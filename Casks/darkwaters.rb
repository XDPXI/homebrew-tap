cask "darkwaters" do
  version "1.0.0b"
  sha256 "8101c417d4accd124e33ca58019532505f84b76fa5dc712159c50dc074c1dee9"

  url "http://cdn.xdpxi.net:8716/darkwaters/version/#{version}/Darkwaters-MacOS-#{version}.zip",
      verified: "cdn.xdpxi.net"
  name "Darkwaters"
  desc "A top-down Sea of Theives inspired game."
  homepage "https://xdpxi.itch.io/mono/"

  livecheck do
    url "http://cdn.xdpxi.net:8716/browse/darkwaters/version/"
    strategy :page_match do |page|
      page.scan(%r{<a href="/browse/darkwaters/version/([^/]+)/"}i).map(&:first)
    end
  end

  app "Darkwaters.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: [
                     "-d",
                     "com.apple.quarantine",
                     "#{appdir}/Darkwaters.app",
                   ],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/darkwaters",
  ]
end
