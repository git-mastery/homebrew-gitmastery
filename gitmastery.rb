class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  url "https://github.com/git-mastery/cli/releases/download/v4.0.0/gitmastery"
  sha256 "47bc9b11078786a63b161ec591dce6daae1708961c4a69ae70aa57686b1721d4"
  version "4.0.0"

  def install
    chmod 0755, "gitmastery"
    bin.install "gitmastery"
  end

  test do
    system "#{bin}/gitmastery", "--help"
  end
end
