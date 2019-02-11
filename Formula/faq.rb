require "formula"

class Faq < Formula
  desc "Format Agnostic jQ"
  homepage "https://github.com/jzelinskie/faq"
  url "https://github.com/jzelinskie/faq/releases/download/0.0.5/faq-darwin-amd64"
  sha256 "810b5011ac4ecef7609e98d724f944f27e26647dbbd84b642d97ac444de39d26"
  version "0.0.5"

  depends_on "jq"
  bottle :unneeded

  def install
    system "mv", "faq-darwin-amd64", "faq"
    bin.install "faq"
  end

  test do
    system "#{bin}/faq", "--version"
  end
end
