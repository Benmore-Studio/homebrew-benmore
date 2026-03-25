class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v0.6.0/benmore-darwin-arm64.tar.gz"
      sha256 "d7713eef195deed3193c392106c495fb0ac48402bdcdb38db79b167d997170f9"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 0.6.0", shell_output("#{bin}/benmore version")
  end
end
