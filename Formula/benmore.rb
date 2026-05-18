class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.13/benmore-darwin-arm64.tar.gz"
      sha256 "8eb3485da1308d839055859c464ae48fe1e525ae959217d3f8d3d35b58784d49"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.13", shell_output("#{bin}/benmore version")
  end
end
