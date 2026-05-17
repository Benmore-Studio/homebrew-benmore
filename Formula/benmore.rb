class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.0/benmore-darwin-arm64.tar.gz"
      sha256 "86f1f245f53c0fc1e492772b5ff6e327be02ea03475db5407317b1841343e51a"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.0", shell_output("#{bin}/benmore version")
  end
end
