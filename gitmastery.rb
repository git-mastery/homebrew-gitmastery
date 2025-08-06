class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  url "https://github.com/git-mastery/cli/releases/download/v4.0.1/gitmastery"
  sha256 "9b331c27cab8e745bc505603c6cc5e44be6086b6b691f3b0ec0b7254b9bb8719"
  version "4.0.1"

  def install
    chmod 0755, "gitmastery"
    bin.install "gitmastery"
  end

  test do
    system "#{bin}/gitmastery", "--help"
  end
end
