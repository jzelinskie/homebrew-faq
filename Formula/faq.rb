class Faq < Formula
  desc "Format Agnostic jQ"
  homepage "https://github.com/jzelinskie/faq"
  url "https://github.com/jzelinskie/faq/archive/refs/tags/0.0.7.tar.gz"
  sha256 "92ea8718cb9734acf1feccfc9eaa8d54809cb7bd49561ee684fb5f60460dbb83"
  version "0.0.7"

  depends_on "jq"
  depends_on "go" => ":build"

  def install
    ENV["CGO_LDFLAGS"] = "-I#{Formula["jq"].opt_lib}"
    ENV["CGO_CFLAGS"] = "-I#{Formula["jq"].opt_include}"
    ldflags= %W[
      -s -w
      -X github.com/jzelinskie/faq/pkg/version.Version=#{version}
    ]
    system "go", "build", "-v", *std_go_args(ldflags: ldflags), "./cmd/faq/main.go"
  end

  test do
    system "#{bin}/faq", "--version"
  end
end
