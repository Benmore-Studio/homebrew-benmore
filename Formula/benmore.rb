class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.4.4/benmore-darwin-arm64.tar.gz"
      sha256 "c588143cd78624adb993f16691dded46d6d197484e3e89468d5acb915aab164a"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.4.4", shell_output("#{bin}/benmore version")
  end
end
