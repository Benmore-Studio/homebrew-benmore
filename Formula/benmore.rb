class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.17/benmore-darwin-arm64.tar.gz"
      sha256 "430e4cb16c029594cab308d98c49f7d06dfcef409607f9c139e8b25d94676b58"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.17", shell_output("#{bin}/benmore version")
  end
end
