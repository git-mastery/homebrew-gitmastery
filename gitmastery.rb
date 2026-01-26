class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.7.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.7.0/gitmastery-arm64"
    sha256 "f29f1d87061ffbaa97af272f8f314d72220ab4ebf296fd00208fd418b8e04778"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.7.0/gitmastery-amd64"
    sha256 "c8ea991085f0c54e5a1e743e1e193b40ff954bc733ec7acc0e4c6a9f1597f4b1"
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
