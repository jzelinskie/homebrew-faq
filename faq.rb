require "formula"

class Faq < Formula
  desc "Format Agnostic jQ"
  homepage "https://github.com/jzelinskie/faq"
  url "https://github.com/jzelinskie/faq/releases/download/0.0.2/faq-darwin-amd64"
  sha256 "5664b74dd0e05a79442d885150cc8b61463368cbcc4061ac5a3d2c7926082d6b"

  depends_on "jq"

  def install
    system "mv", "faq-darwin-amd64", "faq"
    bin.install "faq"
  end

  test do
    assert_equal "2\n", pipe_output("#{bin}/faq -r .bar | sed 's/\x1b\[[0-9;]*m//g'", '{"foo":1, "bar":2}')
  end
end
