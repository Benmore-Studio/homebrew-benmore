class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.9.4/benmore-darwin-arm64.tar.gz"
      sha256 "5d71eddf479b529c760da2cee05d65effe15b4130be4ec4b5e70ef32a15e190d"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.9.4", shell_output("#{bin}/benmore version")
  end
end
