class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.0.0/benmore-darwin-arm64.tar.gz"
      sha256 "a2ad18beabb6e70e09f8b6c107abbca4213734e09348f1e69adb06e1166a8ed4"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.0.0", shell_output("#{bin}/benmore version")
  end
end
