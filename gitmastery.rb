class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.1.4"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.4/gitmastery-arm64"
    sha256 "1eec3f4cee0dd30af43b113398f055a293f6b6ae5ff275b8e10f7fdfd9e7dd81"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.4/gitmastery-amd64"
    sha256 "9289e51d419f43d9a8853cb0ec4a1dba6c835a432e1b6403f6199031ce164335"
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
