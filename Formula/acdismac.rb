class Acdismac < Formula
  desc "ACDIS PKCS11 Mac"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.4.0/mac-p11module-1.4.0.tar.gz"
  sha256 "15860ddf3f25dce83e9a793d771bf622ac4c746a75cf58f1dc6ab9df483876dd"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdismac/releases/download/acdismac-1.4.0"
    sha256 monterey: "db6c41819c3869d6a8a1e19d9c951aca3dc75cdf25ca3585333770f87e30bcf8"
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
