class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.5.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.5.11/benmore-darwin-arm64.tar.gz"
      sha256 "66c09ac417897f018a8f6c5a923c0d71757a871502441ddcad63fd00092f3799"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.5.11", shell_output("#{bin}/benmore version")
  end
end
