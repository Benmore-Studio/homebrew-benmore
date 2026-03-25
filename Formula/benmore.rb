class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.1.1/benmore-darwin-arm64.tar.gz"
      sha256 "560e817f17aa5e370ebc47707bfbb4af83e815b470053d0b69499220c961183d"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.1.1", shell_output("#{bin}/benmore version")
  end
end
