class GitJanitor < Formula
  desc "A fast, interactive TUI for cleaning up local Git branches."
  homepage "https://github.com/jvherck/git-janitor"
  url "https://github.com/jvherck/git-janitor/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "c1a9496a4e90aa57a8a09f0febb2d78b6019669f57efbaa70df9e353932920f0"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w -X main.version=v0.2.2 -X main.commit=3f22708 -X main.date=2026-03-14T19:28:52Z", "-o", bin/"git-janitor", "."
  end
end
