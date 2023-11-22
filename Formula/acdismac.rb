class Acdismac < Formula
  desc "ACDIS PKCS11 Mac"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.2.0/mac-1.2.0.tar.gz"
  sha256 "f7bf1c5defa677ab044ebc58387dd026957a70dba38f75fcba3411eb95646421"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdismac/releases/download/acdismac-1.2.0"
    sha256 monterey: "c029f2e6599012baee1e85e95102ad781b361873f99414eeff0c0e80723dc8f2"
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
