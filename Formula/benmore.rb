class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.16/benmore-darwin-arm64.tar.gz"
      sha256 "ef4311584a54c580ec613440b9781fb77bee0555fd425d8c3eedc40afee02e6f"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.16", shell_output("#{bin}/benmore version")
  end
end
