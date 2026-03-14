class GitJanitor < Formula
  desc "A fast, interactive TUI for cleaning up local Git branches."
  homepage "https://github.com/jvherck/git-janitor"
  url "https://github.com/jvherck/git-janitor/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "addfb50da5ef3e2c52c55d70786ce9b10c567f49927baac6350a25707a538e57"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w -X main.version=v0.2.1 -X main.commit=d8d1efd -X main.date=2026-03-14T18:17:42Z", "-o", bin/"git-janitor", "."
  end
end
