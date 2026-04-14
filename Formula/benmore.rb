class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.9.0/benmore-darwin-arm64.tar.gz"
      sha256 "021831fd21fe5e01d45b97b093fa93eba78ebb5912467d0ccc3e7bf4e0a30aeb"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.9.0", shell_output("#{bin}/benmore version")
  end
end
