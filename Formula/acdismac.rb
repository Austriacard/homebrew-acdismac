class Acdismac < Formula
  desc "ACDIS PKCS11 Mac"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.5.1/mac-p11module-1.5.1.tar.gz"
  sha256 "8571ed47ca2685acdeaac58673fe2c365891c1155f0170bbcd96cca284a0ce4f"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdismac/releases/download/acdismac-1.5.1"
    sha256 monterey: "675c9c8fcb8af1065d89cd5bdb5cc876d78cf5a721d24adfaa780c58b3709e05"
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
