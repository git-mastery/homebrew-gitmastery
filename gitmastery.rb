class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "5.1.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v5.1.0/gitmastery-arm64"
    sha256 "42b26e0b730063f6b3094d5cc1c3788bcef39d14b8eb5e4e05c170c9562b0638"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v5.1.0/gitmastery-amd64"
    sha256 "2aa37e06396ff12387a4a6e16758afdef64057ee84fa4d6ecb5a10c38b669d85"
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
