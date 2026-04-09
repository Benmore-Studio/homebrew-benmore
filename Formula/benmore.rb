class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.6.0/benmore-darwin-arm64.tar.gz"
      sha256 "9df2fb22845ab7b075b353b5d6330c38ff08c84771d6cc174daa1aa676f876d6"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.6.0", shell_output("#{bin}/benmore version")
  end
end
