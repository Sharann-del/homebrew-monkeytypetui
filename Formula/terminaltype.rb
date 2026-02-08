class Terminaltype < Formula
  desc "Terminal-based typing test"
  homepage "https://github.com/sharann-del/terminaltype"
  url "https://registry.npmjs.org/terminaltype/-/terminaltype-4.0.8.tgz"
  sha256 "178042b57e858e854e06894b1631e8c37913e90d2d1944cf93a6b9e8763df728"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"index.js" => "terminaltype"
  end

  test do
    system "#{bin}/terminaltype", "--help"
  end
end

