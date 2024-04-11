class Acdismac < Formula
  desc "ACDIS PKCS11 Mac"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.6.0/mac-p11module-1.6.0.tar.gz"
  sha256 "0b631bc62074e504165d8c3a1a775c377f47754b8e97c44f41ef05a76815d9c2"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdismac/releases/download/acdismac-1.6.0"
    sha256 monterey: "a770e948bdb762b1f2536cf060e6996966c5e9cbc533a69b04fc1d2e36a98726"
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
