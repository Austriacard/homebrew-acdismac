class Acdismac < Formula
  desc "ACDIS PKCS11 Mac"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.5.0/mac-p11module-1.5.0.tar.gz"
  sha256 "1dbf6cb965050fd212fca27bcee0244a8701f7acf3585c3186f0d838f699654e"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdismac/releases/download/acdismac-1.5.0"
    sha256 monterey: "6fb511536b987f74eeb591f693b75309ca78bdf446e0e12ee66c482d37aeed63"
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
