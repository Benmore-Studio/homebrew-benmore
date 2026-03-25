class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v0.8.0/benmore-darwin-arm64.tar.gz"
      sha256 "5eeadde8e03140a8e7b48f53cecd0a40da88a2d87d1f6d5de1cb323d864c4f03"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 0.8.0", shell_output("#{bin}/benmore version")
  end
end
