class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.2/benmore-darwin-arm64.tar.gz"
      sha256 "c530c68482eff7c68c9e1abca63092390d9385b4efe676ef893e8db19b5058da"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.2", shell_output("#{bin}/benmore version")
  end
end
