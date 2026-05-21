class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.5.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.5.12/benmore-darwin-arm64.tar.gz"
      sha256 "dd42588e81a702e72fc1c18e46ff2f0f88f9164700df8192f1e0965c35b1eebd"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.5.12", shell_output("#{bin}/benmore version")
  end
end
