class Rc < Formula
  desc "Unofficial CLI for the RevenueCat REST API v2"
  homepage "https://github.com/andresdefi/Revenue-Cat-CLI"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andresdefi/Revenue-Cat-CLI/releases/download/v0.1.0/Revenue-Cat-CLI_0.1.0_darwin_amd64.tar.gz"
      sha256 "cd538cb355eadc324ae2307a7446bc012be402a0b86047a5b3c35fa240b22d5e"
    end

    on_arm do
      url "https://github.com/andresdefi/Revenue-Cat-CLI/releases/download/v0.1.0/Revenue-Cat-CLI_0.1.0_darwin_arm64.tar.gz"
      sha256 "8b22407f7695b07dc016f41fef3233f3aef1e695f58a4e4f16f1a901a7586e64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andresdefi/Revenue-Cat-CLI/releases/download/v0.1.0/Revenue-Cat-CLI_0.1.0_linux_amd64.tar.gz"
      sha256 "6eb8fa1e165ffcfcdc354f813e50eb4671ae250dfa22245762986a2057547fa0"
    end

    on_arm do
      url "https://github.com/andresdefi/Revenue-Cat-CLI/releases/download/v0.1.0/Revenue-Cat-CLI_0.1.0_linux_arm64.tar.gz"
      sha256 "f0c010fcbf5e3e2547f8ed89516e0dd5399e7bf4540449785af7338b2fbfce50"
    end
  end

  def install
    bin.install "rc"
  end

  test do
    system "#{bin}/rc", "--help"
  end
end
