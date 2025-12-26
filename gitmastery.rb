class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.0.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.0.0/gitmastery-arm64"
    sha256 "607a51c468023831840cad27971249e90968fa13a3bac20d34311ed2358b811e"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.0.0/gitmastery-amd64"
    sha256 "fb0a5a70d0e650bc9c0ddfcf1eccffc8a70c5e1e0fda3cb44b2da3beee020f89"
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
