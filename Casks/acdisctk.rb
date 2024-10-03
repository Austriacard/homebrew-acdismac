cask "acdisctk" do
  version "1.1.0"
  sha256 "4430e7c85b7918d6fd2e700b3e6804eac10abb4e88ad5c3a22793377a33845c7"
  url "https://github.com/Austriacard/ACDIS-CryptoTokenKit/releases/download/1.1.0/mac-ctk-1.1.0.tar.gz", verified: "github.com/Austriacard/ACDIS-CryptoTokenKit"
  name "acdisctk"
  desc "ACDIS CryptoTokenKit"
  homepage "https://www.austriacard.at"
  depends_on macos: ">= :big_sur"
  app "ACDISTokenApp.app"
end
