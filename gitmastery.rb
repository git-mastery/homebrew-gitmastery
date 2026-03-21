class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.8.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.8.0/gitmastery-arm64"
    sha256 "d08fd52c0ec02025cff619a7dc121d5bb2e01ccd25b56e7ea3a73cc3e25cdb92"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.8.0/gitmastery-amd64"
    sha256 "ac1bd052ca8a6b092ba072e55666fe136e3ffed789b6c7359a915d23634c2d4a"
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
