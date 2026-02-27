class GitJanitor < Formula
  desc "A fast, interactive TUI for cleaning up local Git branches."
  homepage "https://github.com/jvherck/git-janitor"
  url "https://github.com/jvherck/git-janitor/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "1fbca7f6a688590a410e3a8f2b44b07660c3b6389870959394a1221f1bccd069"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w -X main.version=v0.2.0 -X main.commit=62146b9 -X main.date=2026-02-27T00:01:01Z", "-o", bin/"git-janitor", "."
  end
end
