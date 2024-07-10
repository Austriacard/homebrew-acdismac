cask "acdisctk" do
  version "1.0.0"
  sha256 "2be4ac5690cb958550158b2ba9f5530fa360d245fe3c601644e789b3c1a61bc9"
  url "https://github.com/Austriacard/ACDIS-CryptoTokenKit/releases/download/1.0.0/mac-ctk-1.0.0.tar.gz", verified: "github.com/Austriacard/ACDIS-CryptoTokenKit"
  name "acdisctk"
  desc "ACDIS CryptoTokenKit"
  homepage "https://www.austriacard.at"
  depends_on macos: ">= :big_sur"
  app "ACDISTokenApp.app"
end
