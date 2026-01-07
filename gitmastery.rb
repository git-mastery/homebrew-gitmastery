class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.5.1"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.5.1/gitmastery-arm64"
    sha256 "878685fb94f50ff917cf81eeef6a1509ad77df3ee7a3e71c1f5c917a28943064"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.5.1/gitmastery-amd64"
    sha256 "c0b5a8554585120758325c27adf47e153763a5d6bd42ea2cbb32521c822c7d85"
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
