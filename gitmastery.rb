class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.4.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.4.0/gitmastery-arm64"
    sha256 "75ee93f3a4bad88db9c403b086cd3d3ab45412bff38019fb601db25f02fef15b"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.4.0/gitmastery-amd64"
    sha256 "8246f9694d5dc922bfe994f4e4459d8278f071b81baad751e8593ba46731a5c6"
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
