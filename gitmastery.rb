class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  url "https://github.com/git-mastery/cli/releases/download/v3.14.0/gitmastery"
  sha256 "bf8f3ba094ee854d0754548b1f1aa4250797d9c1ea06fe12343db70500ae1851"
  version "3.14.0"

  def install
    chmod 0755, "gitmastery"
    bin.install "gitmastery"
  end

  test do
    system "#{bin}/gitmastery", "--help"
  end
end
