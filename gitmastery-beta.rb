class GitmasteryBeta < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version ".0.1.13-beta.1"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v.0.1.13-beta.1/gitmastery-beta-arm64"
    sha256 "fc52b2282574462105f831eb67c08031e8ba0beb77c2e91cc037d361f2c5edc4"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v.0.1.13-beta.1/gitmastery-beta-amd64"
    sha256 "1460100e16e8c4241065a73251f004e2561b53cdc0c674d1e64979f710bf2053"
  end

  def install
    if Hardware::CPU.arm?
      chmod 0755, "gitmastery-beta-arm64"
      bin.install "gitmastery-beta-arm64" => "gitmastery-beta"
    else
      chmod 0755, "gitmastery-beta-amd64"
      bin.install "gitmastery-beta-amd64" => "gitmastery-beta"
    end
  end

  test do
    system "#{bin}/gitmastery-beta", "--help"
  end
end
