class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  url "https://github.com/git-mastery/cli/releases/download/v4.2.0/gitmastery"
  sha256 "618dd32a9f4d72c911ac7fc1147e7ac08a40a365084bea3512ea44a331709acd"
  version "4.2.0"

  def install
    chmod 0755, "gitmastery"
    bin.install "gitmastery"
  end

  test do
    system "#{bin}/gitmastery", "--help"
  end
end
