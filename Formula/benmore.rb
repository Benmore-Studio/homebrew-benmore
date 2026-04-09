class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.4.3/benmore-darwin-arm64.tar.gz"
      sha256 "8ba8f21b26f9874e93d0980446682804597e0a3ced8117051bb917e44fe7d79c"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.4.3", shell_output("#{bin}/benmore version")
  end
end
