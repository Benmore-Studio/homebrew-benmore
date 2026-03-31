class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.4.2/benmore-darwin-arm64.tar.gz"
      sha256 "fc31365b4e849a6540b05d3bafe0dea9e510b18229868030b0566291d6df8d63"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.4.2", shell_output("#{bin}/benmore version")
  end
end
