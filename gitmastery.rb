class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "4.8.6"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v4.8.6/gitmastery-arm64"
    sha256 "57db41fa82a257befbf376b47e5cd48377bdf04d3b8a410b9e76995651258f6c"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v4.8.6/gitmastery-amd64"
    sha256 "4ccc9e75cf694777515a0c56606959c3626bb2008941f6743c28e29639a3933d"
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
