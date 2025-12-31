class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.1.2"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.2/gitmastery-arm64"
    sha256 "ac62b8ea790f66e47eaa8f19d5ea6625c4129b763029440d0faac0d16ad09f49"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.2/gitmastery-amd64"
    sha256 "69ffaacaca01712953551b0b42887e6ea5419f332dff03c5cac92c14fd89d9c7"
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
