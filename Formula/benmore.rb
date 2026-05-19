class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.22/benmore-darwin-arm64.tar.gz"
      sha256 "92416a9a61bbcb5fc4269b256b8ec0f3c27c7ad98643d7d76dffa9bfba452873"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.22", shell_output("#{bin}/benmore version")
  end
end
