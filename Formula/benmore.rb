class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.5.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.5.10/benmore-darwin-arm64.tar.gz"
      sha256 "d3f4e907201da8971726cb48eea323b91e734ea31fe45966aa58cbe65a8cceba"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.5.10", shell_output("#{bin}/benmore version")
  end
end
