class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v0.5.0/benmore-darwin-arm64.tar.gz"
      sha256 "1654cf16a373d15257560414df76e3a60a9525120aa9e5aee2560d1a54570257"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 0.5.0", shell_output("#{bin}/benmore version")
  end
end
