class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  url "https://github.com/git-mastery/cli/releases/download/v4.8.0/gitmastery"
  sha256 "7d74d459ad47bdc4003556007ddfa51153a3abce582e1538e5ca65aaaaec6faf"
  version "4.8.0"

  def install
    chmod 0755, "gitmastery"
    bin.install "gitmastery"
  end

  test do
    system "#{bin}/gitmastery", "--help"
  end
end
