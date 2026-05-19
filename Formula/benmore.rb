class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.3.0/benmore-darwin-arm64.tar.gz"
      sha256 "cbc3f3d23ae09566ec166b2c8267fa3bba778169ae7ba09f1576c27423035814"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.3.0", shell_output("#{bin}/benmore version")
  end
end
