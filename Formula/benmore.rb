class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.7/benmore-darwin-arm64.tar.gz"
      sha256 "e8750af388ce8e1f6ba14dc8100636ac150a83120f7a80f87d61d21c9cb4894d"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.7", shell_output("#{bin}/benmore version")
  end
end
