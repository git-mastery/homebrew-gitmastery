class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  url "https://github.com/git-mastery/cli/releases/download/v4.7.0/gitmastery"
  sha256 "8e6d6240c08ca32f110620f47bad3d0671fcb9fa55a339b7a09aec4a92af5e79"
  version "4.7.0"

  def install
    chmod 0755, "gitmastery"
    bin.install "gitmastery"
  end

  test do
    system "#{bin}/gitmastery", "--help"
  end
end
