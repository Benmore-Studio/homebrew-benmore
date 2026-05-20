class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.4.0/benmore-darwin-arm64.tar.gz"
      sha256 "fa887ccc31edc48c4f588f4dc8f85eff3b854018ce9b34110ba0ac077ca77830"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.4.0", shell_output("#{bin}/benmore version")
  end
end
