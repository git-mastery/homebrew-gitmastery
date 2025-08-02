class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  url "https://github.com/git-mastery/cli/releases/download/v3.13.4/gitmastery"
  sha256 "7f5b6407fd837adc68b946db88f1601d16c6ed0f4d5b2d83b4d3a5f4ee3791ec"
  version "3.13.4"

  def install
    chmod 0755, "gitmastery"
    bin.install "gitmastery"
  end

  test do
    system "#{bin}/gitmastery", "--help"
  end
end
