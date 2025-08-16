class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "4.8.4"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v4.8.4/gitmastery-arm64"
    sha256 ""
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v4.8.4/gitmastery-amd64"
    sha256 ""
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
