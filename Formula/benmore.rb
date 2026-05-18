class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.10/benmore-darwin-arm64.tar.gz"
      sha256 "4803ffee4ecf40dbce284dd7a5c75b2779057ae9cc9383f2c449a42e795568f2"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.10", shell_output("#{bin}/benmore version")
  end
end
