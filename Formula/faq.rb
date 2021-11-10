require "formula"

class Faq < Formula
  desc "Format Agnostic jQ"
  homepage "https://github.com/jzelinskie/faq"
  url "https://github.com/jzelinskie/faq/releases/download/0.0.7/faq-darwin-amd64"
  sha256 "869f4d8acaa1feb11ce76b2204c5476b8a04d9451216adde6b18e2ef2f978794"
  version "0.0.7"

  depends_on "jq"

  def install
    system "mv", "faq-darwin-amd64", "faq"
    bin.install "faq"
  end

  test do
    system "#{bin}/faq", "--version"
  end
end
