class Acdismac < Formula
  desc "ACDIS PKCS11 Mac"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.3.0/mac-1.3.0.tar.gz"
  sha256 "40361f5b9ae18e427b8a9ae1c65bb0b6ee3208e78320722b15d6e23c08ac9e0c"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdismac/releases/download/acdismac-1.3.0"
    sha256 monterey: "88ec4e553e0930bac353e6dfebc844fb278f670e91c1a3a12719f2d7bf12196d"
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
