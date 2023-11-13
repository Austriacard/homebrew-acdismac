class Acdismac < Formula
  desc "ACDIS PKCS11 Mac"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.1.0/mac-1.1.0.tar.gz"
  sha256 "e1677166ef367bfe58a4dff4d85a10eacb25fcdc44342a2ddbb9038426c24341"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdismac/releases/download/acdismac-1.1.0"
    sha256 monterey: "2752961be1e653aee771396576b17eb35fb7a489d40d56550163ca11b9559d2d"
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
