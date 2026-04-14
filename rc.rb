class Rc < Formula
  desc "Unofficial CLI for the RevenueCat REST API v2"
  homepage "https://github.com/andresdefi/Revenue-Cat-CLI"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andresdefi/Revenue-Cat-CLI/releases/download/v0.2.0/rc_0.2.0_darwin_amd64.tar.gz"
      sha256 "c238e3c0ad9ce01a4c0300835813106fb70ac163accd63578e5852ad7e6e44cf"
    end

    on_arm do
      url "https://github.com/andresdefi/Revenue-Cat-CLI/releases/download/v0.2.0/rc_0.2.0_darwin_arm64.tar.gz"
      sha256 "8374421c156b9ef5ffd56fbf1117f45f68fb1fefb567acb35683503e5abb7164"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andresdefi/Revenue-Cat-CLI/releases/download/v0.2.0/rc_0.2.0_linux_amd64.tar.gz"
      sha256 "604b440d16ee1c47dc25b4d4bd5535f0881d7c31f1f127f8c7351b2c688c369a"
    end

    on_arm do
      url "https://github.com/andresdefi/Revenue-Cat-CLI/releases/download/v0.2.0/rc_0.2.0_linux_arm64.tar.gz"
      sha256 "0393d8f6701c9247b1543d870ca40064648b7cec3595671dba3a396440f9241b"
    end
  end

  def install
    bin.install "rc"
  end

  test do
    system "#{bin}/rc", "--help"
  end
end
