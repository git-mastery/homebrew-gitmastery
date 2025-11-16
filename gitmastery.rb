class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "6.2.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v6.2.0/gitmastery-arm64"
    sha256 "781e13df9a0ac0f7aab375bd6e2e77bed48af003d0fb1a790f771b1ca726ff59"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v6.2.0/gitmastery-amd64"
    sha256 "3bf44c6d55cd952d406d7ee802cee786f34f7542ba63bab5e31104777a82f3fe"
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
