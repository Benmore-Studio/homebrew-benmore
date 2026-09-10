class Qa < Formula
  desc "Evidence-first frontend verification CLI"
  homepage "https://github.com/Benmore-Studio/automated-qa"
  url "https://github.com/Benmore-Studio/automated-qa/releases/download/v0.10.3/automated-qa-v0.10.3-darwin-universal.tar.gz"
  sha256 "2eebd4ecd8d588a32734f02518d76b8a0a3f87729e871043db45b7daac3184c4"
  license :cannot_represent

  depends_on :macos
  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/qa.mjs"
    mv bin/"qa.mjs", bin/"qa"
    bin.install_symlink "qa" => "automated-qa"
  end

  test do
    assert_match "automated-qa 0.10.3", shell_output("#{bin}/qa --version")
    assert_match "evidence-first frontend verification", shell_output("#{bin}/automated-qa --help")
  end
end
