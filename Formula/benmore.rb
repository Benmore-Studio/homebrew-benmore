class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.4/benmore-darwin-arm64.tar.gz"
      sha256 "e0a159ee096233153a511f91deb4f7552b68111ee24ae11338d215847d6736b0"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.4", shell_output("#{bin}/benmore version")
  end
end
