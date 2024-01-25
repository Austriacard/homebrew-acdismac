class Acdismac < Formula
  desc "ACDIS PKCS11 Mac"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.5.1/mac-p11module-1.5.1.tar.gz"
  sha256 "0dec4ff279178b0db537853461d4e905f4c8a7c67562a3b7ec73f30affb5e5e5"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdismac/releases/download/acdismac-1.5.1"
    sha256 monterey: "407788244ce05e8203acfd6c6e8378c16dcfc6b9c00bb9546de2fd5269b31823"
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
