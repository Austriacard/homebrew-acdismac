cask "acdisp11manager" do
  version "1.6.0"
  sha256 "7d350877017020903189141feed59093528b13b2d93d8969b392da8af24ff3f5"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.6.0/mac-p11manager-1.6.0.tar.gz", verified: "github.com/Austriacard/ACDIS-PKCS11"
  name "acdisp11manager"
  desc "ACDIS PKCS11 Manager"
  homepage "https://www.austriacard.at"
  depends_on macos: ">= :big_sur"
  depends_on cask: "dotnet"
  depends_on formula: "acdismac"
  app "ACDIS PKCS11 Manager.app"
end
