class Acdismac < Formula
  desc "ACDIS PKCS11 Mac"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.7.0/mac-p11module-1.7.0.tar.gz"
  sha256 "ce1d906c926badcd29bc23d6356b1ac6caae8d5d909b066e372e031980c4e049"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdismac/releases/download/acdismac-1.7.0"
    sha256 monterey: "14356fba7a8a83cc3647332454b26ebd221b26b8fbfee0f24dc24cc821dbcd6a"
  end
  on_macos do
    def install
      prefix.install Dir["*"]
      lib.install_symlink prefix/"acdis-pkcs11.dylib"
    end
  end

  test do
    system "true"
  end
end
