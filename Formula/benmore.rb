class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.4.1/benmore-darwin-arm64.tar.gz"
      sha256 "499a2c4ea2c753d317541c2523291c72fb50a9f83c5bbb227dfa6354ef6b6d1c"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.4.1", shell_output("#{bin}/benmore version")
  end
end
