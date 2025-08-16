class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "4.9.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v4.9.0/gitmastery-arm64"
    sha256 "13f98525e19e001ca2c3edfcbc251bc1bb14c804ac293db8894ba4a3fe1180c0"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v4.9.0/gitmastery-amd64"
    sha256 "bf14d97b3688bc1a64d4e1334b4458fbdb2d7910a9a6393c7f8a198fe0f8c2b8"
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
