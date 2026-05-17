class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.0.0/benmore-darwin-arm64.tar.gz"
      sha256 "e8a29621b0bb5bc895db101674dc1a8e8e3f217bd903ef91ee6e7c55084eadc9"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.0.0", shell_output("#{bin}/benmore version")
  end
end
