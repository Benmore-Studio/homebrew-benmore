class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.9.2/benmore-darwin-arm64.tar.gz"
      sha256 "a15238ef53492ab73d86549c040d8def79e7f8ddd2ed05f946f4854b95e4516b"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.9.2", shell_output("#{bin}/benmore version")
  end
end
