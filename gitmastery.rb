class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  url "https://github.com/git-mastery/cli/releases/download/v3.15.0/gitmastery"
  sha256 "705342744e7d93500b21b81cb71e357c49734aca956da0c2e05d124496d4d32e"
  version "3.15.0"

  def install
    chmod 0755, "gitmastery"
    bin.install "gitmastery"
  end

  test do
    system "#{bin}/gitmastery", "--help"
  end
end
