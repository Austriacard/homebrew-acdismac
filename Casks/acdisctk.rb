cask "acdisctk" do
  version "1.2.0"
  sha256 "1c98f064c930ad99a624a7789a0c38cb4dc9d99559e806aec646a8e8a29a04a1"
  url "https://github.com/Austriacard/ACDIS-CryptoTokenKit/releases/download/1.2.0/mac-ctk-1.2.0.tar.gz", verified: "github.com/Austriacard/ACDIS-CryptoTokenKit"
  name "acdisctk"
  desc "ACDIS CryptoTokenKit"
  homepage "https://www.austriacard.at"
  depends_on macos: ">= :big_sur"
  app "ACDISTokenApp.app"
end
