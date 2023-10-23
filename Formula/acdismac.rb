class Acdismac < Formula
  desc "ACDIS PKCS11 Mac"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.0.0/mac-1.0.0.tar.gz"
  sha256 "cefc09c69b94512f7ae29581d9e298f6e2d976d572f88e9e474070bf4d407ec9"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdismac/releases/download/acdismac-1.0.0"
    sha256 monterey: "9c3cc18e577dfd99f92c248ff97383bf8129bf8b249775eae8dc11662511dc6c"
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
