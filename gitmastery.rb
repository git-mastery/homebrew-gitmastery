class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  url "https://github.com/git-mastery/cli/releases/download/v4.6.0/gitmastery"
  sha256 "97f89ea88f76f97af78cbf2a7eabb3c052c71b483ac236e795aa742ff7124445"
  version "4.6.0"

  def install
    chmod 0755, "gitmastery"
    bin.install "gitmastery"
  end

  test do
    system "#{bin}/gitmastery", "--help"
  end
end
