class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.1.0/benmore-darwin-arm64.tar.gz"
      sha256 "2c81e3683ce857baa5e84e15f2fe96bc9085a1fcb18073c94c2ecb28b826bbd9"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.1.0", shell_output("#{bin}/benmore version")
  end
end
