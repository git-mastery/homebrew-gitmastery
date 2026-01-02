class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.1.7"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.7/gitmastery-arm64"
    sha256 "1cbb276fd315a7c3dc42500783a95baae2d620e680d0599d50d3bd08cb804877"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.7/gitmastery-amd64"
    sha256 "fe26caa4221b0f2773a97e2b32084b8e9d71a47616e907b743a8fa25fc6bfc70"
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
