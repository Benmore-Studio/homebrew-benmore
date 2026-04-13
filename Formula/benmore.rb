class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.8.0/benmore-darwin-arm64.tar.gz"
      sha256 "47755692d75bf97fd09404a19c158201c7b2900c014a2c57f11ad9d81a384d22"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.8.0", shell_output("#{bin}/benmore version")
  end
end
