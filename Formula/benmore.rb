class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.12/benmore-darwin-arm64.tar.gz"
      sha256 "a8610a51f5612b4181cabbd6ba0f7baca7bb27b24d37f52a50408e42192195db"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.12", shell_output("#{bin}/benmore version")
  end
end
