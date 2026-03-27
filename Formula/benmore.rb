class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.2.0/benmore-darwin-arm64.tar.gz"
      sha256 "bbd68a43b03d2fae2eebd5814cc18f90c4ea6880279bf290f88e344fd8479384"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.2.0", shell_output("#{bin}/benmore version")
  end
end
