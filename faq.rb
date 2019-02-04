require "formula"

class Faq < Formula
  desc "Format Agnostic jQ"
  homepage "https://github.com/jzelinskie/faq"
  url "https://github.com/jzelinskie/faq/releases/download/0.0.4/faq-darwin-amd64"
  sha256 "baa61466aeb816667c1ef181fb9da8dfeb54db619e11991011bd33363fe02970"

  depends_on "jq"

  def install
    system "mv", "faq-darwin-amd64", "faq"
    bin.install "faq"
  end

  test do
    assert_equal "2\n", pipe_output("#{bin}/faq -r .bar | sed 's/\x1b\[[0-9;]*m//g'", '{"foo":1, "bar":2}')
  end
end
