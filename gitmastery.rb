class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.3.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.3.0/gitmastery-arm64"
    sha256 "bffaec44765082e4d773b21bed92323e36a70f599e5d7f8465be5cfca0d75b31"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.3.0/gitmastery-amd64"
    sha256 "852fb11b8d4c1464b066e44c3414db9a553008a3e2d2d51a68c5fd97365529be"
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
