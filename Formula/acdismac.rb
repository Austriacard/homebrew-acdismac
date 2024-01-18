class Acdismac < Formula
  desc "ACDIS PKCS11 Mac"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.4.1/mac-p11module-1.4.1.tar.gz"
  sha256 "a2913afb49c8908dcbbe3ad59f2c6973958c8a8ae741a115022da37bffd86b5c"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdismac/releases/download/acdismac-1.4.1"
    sha256 monterey: "925ae4811abc4327285b14b8f2f0b2de5f73ec2520db03dd630666e3da8af36b"
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
