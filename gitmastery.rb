class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.3.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.3.0/gitmastery-arm64"
    sha256 "013c366701b688b95270bedf988fbc35b9acc1bc0ec0ae190b48df808557bab5"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.3.0/gitmastery-amd64"
    sha256 "254fedc37ced3cd0defe14cee6877095326be2f009492bc9f106d83630baa79b"
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
