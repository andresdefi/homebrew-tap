class Rc < Formula
  desc "Unofficial CLI for the RevenueCat REST API v2"
  homepage "https://github.com/andresdefi/Revenue-Cat-CLI"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andresdefi/Revenue-Cat-CLI/releases/download/v0.2.0/rc_0.2.0_darwin_amd64.tar.gz"
      sha256 "717d2e2359a5d36a28f37b60d5f42aa6c794b20fce08a3dfc18d6511186ba3ea"
    end

    on_arm do
      url "https://github.com/andresdefi/Revenue-Cat-CLI/releases/download/v0.2.0/rc_0.2.0_darwin_arm64.tar.gz"
      sha256 "87d534fceb315fe976b67f3c188ade07d26c4ef8327d9b4bb9af2f52d17b7bc5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andresdefi/Revenue-Cat-CLI/releases/download/v0.2.0/rc_0.2.0_linux_amd64.tar.gz"
      sha256 "b88c326b2863dae4dfa883be1beea78ba64d32fd28abd06e3cbe7f9c148d549c"
    end

    on_arm do
      url "https://github.com/andresdefi/Revenue-Cat-CLI/releases/download/v0.2.0/rc_0.2.0_linux_arm64.tar.gz"
      sha256 "264219a207e620c1d7fa3c616338b912633ee602b703bb90a51cf35edb84b5a2"
    end
  end

  def install
    bin.install "rc"
  end

  test do
    system "#{bin}/rc", "--help"
  end
end
