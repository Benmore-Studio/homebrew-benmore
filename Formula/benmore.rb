class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.8/benmore-darwin-arm64.tar.gz"
      sha256 "6ab610332d5083f472e0c3227023fb5a2328a206554a214fe47928759782052d"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.8", shell_output("#{bin}/benmore version")
  end
end
