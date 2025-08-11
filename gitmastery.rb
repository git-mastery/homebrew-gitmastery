class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  url "https://github.com/git-mastery/cli/releases/download/v4.5.0/gitmastery"
  sha256 "7c7234a541bd0374e6f12faa0441df094adfe1104b4cb1c24b3885c846998839"
  version "4.5.0"

  def install
    chmod 0755, "gitmastery"
    bin.install "gitmastery"
  end

  test do
    system "#{bin}/gitmastery", "--help"
  end
end
