class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "4.11.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v4.11.0/gitmastery-arm64"
    sha256 "79bdb6404e0fc7d6057c1ec27c35eab8ced73181753902d0773b7746f47adec9"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v4.11.0/gitmastery-amd64"
    sha256 "659eeb3d5985ad98ee45e3969538a23f6a743d35ce42a9d0137f345f5baf9f7d"
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
