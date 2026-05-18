class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.14/benmore-darwin-arm64.tar.gz"
      sha256 "72ec8f75526a2a1aad96c7dd7c877f2c6ec75f78f2d922e1d2e0652924fd85bb"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.14", shell_output("#{bin}/benmore version")
  end
end
