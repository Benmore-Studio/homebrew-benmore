class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v0.7.0/benmore-darwin-arm64.tar.gz"
      sha256 "df8d2de73fe286403d9931abb01ec4f82ef649ac017e01b1aaadde7bfdeeebc2"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 0.7.0", shell_output("#{bin}/benmore version")
  end
end
