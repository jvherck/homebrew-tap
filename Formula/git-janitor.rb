class GitJanitor < Formula
  desc "A fast, interactive TUI for cleaning up local Git branches."
  homepage "https://github.com/jvherck/git-janitor"
  url "https://github.com/jvherck/git-janitor/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "41378facaeebe706c1cc1948fd964fadeac35c8ef86212155044f56b8c8faf99"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w -X main.version=v0.1.4 -X main.commit=edfcb6b -X main.date=2026-02-26T23:21:34Z", "-o", bin/"git-janitor", "."
  end
end
