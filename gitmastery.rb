class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "5.0.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v5.0.0/gitmastery-arm64"
    sha256 "045c7a2ff51d220372de4c356d0ecee7d87e3954a6f8f6cdfce587d0a71f972e"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v5.0.0/gitmastery-amd64"
    sha256 "618b811df6d6c0001b66997288d000dba2ba502673667c4b7f27342c49651314"
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
