class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "6.1.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v6.1.0/gitmastery-arm64"
    sha256 "d206468a3cd3d5629ea9c21d6f2aa110be051bc06fd6502cfa5e09ce08dd2ce2"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v6.1.0/gitmastery-amd64"
    sha256 "c957182c49844a5ed17976641fd91dbc39fa3e9952e316eefe9aef2d1606a751"
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
