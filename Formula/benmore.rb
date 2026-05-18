class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.5/benmore-darwin-arm64.tar.gz"
      sha256 "ab6b602af80ef151fd0bc0f71a25f817c9a22063a3262eb84e5425980cda59e9"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.5", shell_output("#{bin}/benmore version")
  end
end
