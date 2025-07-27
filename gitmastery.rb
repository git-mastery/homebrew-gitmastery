class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  url "https://github.com/git-mastery/cli/releases/download/v3.13.3/gitmastery"
  sha256 "88eb61f2bdaf0ec1147f966f79828370ff54534f112cfa3163b81267bcc92b03"
  version "3.13.3"

  def install
    chmod 0755, "gitmastery"
    bin.install "gitmastery"
  end

  test do
    system "#{bin}/gitmastery", "--help"
  end
end
