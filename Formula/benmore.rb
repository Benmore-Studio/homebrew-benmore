class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.9.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.9.5/benmore-darwin-arm64.tar.gz"
      sha256 "12d77937f49af38df3479a52a4378bf20b89cebe5fe40c193235cb3835e680a2"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.9.5", shell_output("#{bin}/benmore version")
  end
end
