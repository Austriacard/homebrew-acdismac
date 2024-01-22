cask "acdisp11manager" do
  version "1.5.0"
  sha256 "f56f9d7924c697b25bd5b5139693c745f2f47cd3913449d41230d7a9fc8c9341"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.5.0/mac-p11manager-1.5.0.tar.gz", verified: "github.com/Austriacard/ACDIS-PKCS11"
  name "acdisp11manager"
  desc "ACDIS PKCS11 Manager"
  homepage "https://www.austriacard.at"
  depends_on macos: ">= :big_sur"
  depends_on cask: "dotnet"
  depends_on formula: "acdismac"
  app "ACDIS PKCS11 Manager.app"
end
