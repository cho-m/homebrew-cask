cask "itunes-producer" do
  version "3.1.4,1085"
  sha256 :no_check

  url "https://itunespartner.apple.com/assets/downloads/iTunesProducer.dmg"
  name "iTunes Producer"
  desc "Publish ebooks on Apple Books and upload music to iTunes Connect"
  homepage "https://itunesconnect.apple.com/WebObjects/iTunesConnect.woa/ra/ng/resources_page"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  pkg "iTunesProducer.pkg"

  uninstall pkgutil: "com.apple.pkg.iTunesProducer"
end
