class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.4.2"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.4.2/gitmastery-arm64"
    sha256 "559ed0482c2684b5935bd4dbe71edc051ffd53bf7c850dfdcbee6928cc7bcf16"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.4.2/gitmastery-amd64"
    sha256 "694d2a3ee76015345ca09775a188a71f62f040a32ba21e08015de6e0470ab79f"
  end

  def install
    if Hardware::CPU.arm?
      chmod 0755, "gitmastery-arm64"
      bin.install "gitmastery-arm64" => "gitmastery"
    else
      chmod 0755, "gitmastery-amd64"
      bin.install "gitmastery-amd64" => "gitmastery"
    end
  end

  test do
    system "#{bin}/gitmastery", "--help"
  end
end
