class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.9.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.9.9/benmore-darwin-arm64.tar.gz"
      sha256 "290ad5e7224bd4f0c4b4cfaa712b17da85b533f0215e189b41ba17c63f79d6b3"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.9.9", shell_output("#{bin}/benmore version")
  end
end
