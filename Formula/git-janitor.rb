class GitJanitor < Formula
  desc "A fast, interactive TUI for cleaning up local Git branches."
  homepage "https://github.com/jvherck/git-janitor"
  url "https://github.com/jvherck/git-janitor/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "43cd8e51733dbaa2073199a49167523c5e9a62697662e1cd043da55d7f2624b4"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w -X main.version=v0.1.3 -X main.commit=64002be -X main.date=2026-02-26T16:03:15Z", "-o", bin/"git-janitor", "."
  end
end
