class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  url "https://github.com/git-mastery/cli/releases/download/v3.13.5/gitmastery"
  sha256 "15378f3dc1659883be8548609983f5e1819fad6c846e2e835845a9fd3aa57f7c"
  version "3.13.5"

  def install
    chmod 0755, "gitmastery"
    bin.install "gitmastery"
  end

  test do
    system "#{bin}/gitmastery", "--help"
  end
end
