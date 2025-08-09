class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  url "https://github.com/git-mastery/cli/releases/download/v4.1.0/gitmastery"
  sha256 "db2887d5ffa11c262cbc9be67f26c70907d514db5b5ceed5e4f6fa54884e481e"
  version "4.1.0"

  def install
    chmod 0755, "gitmastery"
    bin.install "gitmastery"
  end

  test do
    system "#{bin}/gitmastery", "--help"
  end
end
