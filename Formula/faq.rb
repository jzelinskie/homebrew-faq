require "formula"

class Faq < Formula
  desc "Format Agnostic jQ"
  homepage "https://github.com/jzelinskie/faq"
  url "https://github.com/jzelinskie/faq/releases/download/0.0.6/faq-darwin-amd64"
  sha256 "bfcd6f527d1ba74db6bdd6bfb551a4db9c2c72f01baebf8069e9849b93dceef9"
  version "0.0.6"

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
