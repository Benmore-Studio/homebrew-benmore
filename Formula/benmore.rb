class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.1.1/benmore-darwin-arm64.tar.gz"
      sha256 "ef784c23ddeccf9568495fe933111d1dba11f87d8d4c695adf3ae1f871befb99"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.1.1", shell_output("#{bin}/benmore version")
  end
end
