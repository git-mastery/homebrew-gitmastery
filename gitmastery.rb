class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.1.8"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.8/gitmastery-arm64"
    sha256 "80e8d83a79256bb14acc48775260caf15cd9e4fc716ecb1ce0baae9614758634"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.8/gitmastery-amd64"
    sha256 "661f144abf030bff260be98f932a5603016b29d33382c4445f138e64c2693a58"
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
