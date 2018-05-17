require "formula"

class Faq < Formula
  desc "Format Agnostic jQ"
  homepage "https://github.com/jzelinskie/faq"
  url "https://github.com/jzelinskie/faq/releases/download/0.0.1/faq-darwin-amd64"
  head "https://github.com/jzelinskie/faq.git"
  sha256 "72bb04487c1a6c4e90f8a04f68add383b4dd293e9d29413a35f4611bfa18c6cb"

  depends_on "jq"

  def install
    system "mv", "faq-darwin-amd64", "faq"
    bin.install "faq"
  end
end
