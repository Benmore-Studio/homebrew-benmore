class Qa < Formula
  desc "Evidence-first frontend verification CLI"
  homepage "https://github.com/Benmore-Studio/automated-qa"
  url "https://github.com/Benmore-Studio/automated-qa/releases/download/v0.10.2/automated-qa-v0.10.2-darwin-universal.tar.gz"
  sha256 "ed1764d1894b22ca74edb8d246831a8d52270dce4ae5a2b3d94ed1f357d6ed88"
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
    assert_match "automated-qa 0.10.2", shell_output("#{bin}/qa --version")
    assert_match "evidence-first frontend verification", shell_output("#{bin}/automated-qa --help")
  end
end
