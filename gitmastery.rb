class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.1.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.0/gitmastery-arm64"
    sha256 "e1141ff1a6406cb460b371b1279261e5692c18536dcb00b4ce9caae0fab52cf0"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.0/gitmastery-amd64"
    sha256 "82ed948acdac165190852aeff196a6c560b6684a4134a2866e0f61cd11af7f53"
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
