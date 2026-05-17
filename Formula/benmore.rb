class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.9.3/benmore-darwin-arm64.tar.gz"
      sha256 "65037b52787cf0339655baf5cd449ca468042e4d59d4a690b6fe0b33f5baebfb"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.9.3", shell_output("#{bin}/benmore version")
  end
end
