class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.9.1/benmore-darwin-arm64.tar.gz"
      sha256 "18526a041acffdc1fe072777e78c4630cf52d58f5876d3f4c20282d746063844"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.9.1", shell_output("#{bin}/benmore version")
  end
end
