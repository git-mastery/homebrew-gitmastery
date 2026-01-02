class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.1.3"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.3/gitmastery-arm64"
    sha256 "0ef837012510825327ffefc49956b3dd11a7a92279bfbd7f19cc5854b39c4e73"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.3/gitmastery-amd64"
    sha256 "1c3bd4798226995d2d62f1022f5600dfc8e93ea5b8cf9c6f80273aefbb7c0274"
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
