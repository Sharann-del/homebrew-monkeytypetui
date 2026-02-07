class Monkeytypetui < Formula
  desc "Monkeytype-inspired terminal typing test"
  homepage "https://github.com/sharann-del/monkeytypetui"
  url "https://registry.npmjs.org/monkeytypetui/-/monkeytypetui-1.1.0.tgz"
  sha256 "33017bce0f178e58f81923919b8c7a215eda66907e03b585f09be93f358238d3"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"index.js" => "monkeytypetui"
  end

  test do
    system "#{bin}/monkeytypetui", "--help"
  end
end	
