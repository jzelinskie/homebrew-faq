require "formula"

class Faq < Formula
  desc "Format Agnostic jQ"
  homepage "https://github.com/jzelinskie/faq"
  url "https://github.com/jzelinskie/faq/releases/download/0.0.3/faq-darwin-amd64"
  sha256 "95b615307bfa525c578d774ceb5bd2e060d902442497f9ffd895b6afdc89f3f6"

  depends_on "jq"

  def install
    system "mv", "faq-darwin-amd64", "faq"
    bin.install "faq"
  end

  test do
    assert_equal "2\n", pipe_output("#{bin}/faq -r .bar | sed 's/\x1b\[[0-9;]*m//g'", '{"foo":1, "bar":2}')
  end
end
