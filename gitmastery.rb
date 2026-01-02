class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.1.5"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.5/gitmastery-arm64"
    sha256 "e2bbe38febaf28346ff1ba333998f7ca2cf6ae433ac17070c26a3188143ad35c"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.5/gitmastery-amd64"
    sha256 "333146faf7f00f230af879aadb6b53ff3952ba2b46afeddf8090efdd3c20471b"
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
