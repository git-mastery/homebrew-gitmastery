class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.8.2"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.8.2/gitmastery-arm64"
    sha256 "023a40ca81c0dd46d7469340afc88844fb6396b52fe7609f1b2ba99a02ac5189"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.8.2/gitmastery-amd64"
    sha256 "9d7564de9ef57ab10bcc11e1cd3ac4212c18327fc4650a9e8506784a2db86d28"
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
