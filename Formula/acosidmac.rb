class Acosidmac < Formula
  desc "Test Mptest"
  homepage "https://www.bdc.at"
  url "https://github.com/MarkusPunz/testapp1/raw/main/mac.tar.gz"
  version "0.0.1"
  sha256 "666f6626b4b2077369fdd6c134ea3666a2a136b6e9dfa2d7dcb0b1ea9fafa5c7"

  bottle do
    root_url "https://github.com/MarkusPunz/homebrew-tapacosidmac/releases/download/acosidmac-0.0.1"
    sha256 monterey: "6d781567de691f46a3c89cf92c1b4131622e3f1607956d4fc3e26e55e9f3d237"
  end

  on_macos do
    def install
      prefix.install Dir["*"]
      lib.install_symlink prefix/"acosid-pkcs11.dylib"
    end
  end

  test do
    system "true"
  end
end
