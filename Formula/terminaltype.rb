class Terminaltype < Formula
  desc "Terminal-based typing test"
  homepage "https://github.com/sharann-del/terminaltype"
  url "https://registry.npmjs.org/terminaltype/-/terminaltype-4.1.1.tgz"
  sha256 "9e1076ac92be86d5546bfa9b9b32f88ef01a8ea393d308b685611e81086b358c"
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

