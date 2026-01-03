class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.1.8"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.8/gitmastery-arm64"
    sha256 "211c6c8503e4508b8a5103160dbf7352ea8bf26e9eba894dffa1781117b75731"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.8/gitmastery-amd64"
    sha256 "30376aa8edda048b8ad93f32a18e63fb78cf750d1ba5362a149a108fd4b9061c"
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
