class Terminaltype < Formula
  desc "Terminal-based typing test"
  homepage "https://github.com/sharann-del/terminaltype"
  url "https://registry.npmjs.org/terminaltype/-/terminaltype-4.0.3.tgz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
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
