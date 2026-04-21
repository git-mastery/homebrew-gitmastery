class GitmasteryBeta < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.8.2-beta.1"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.8.2-beta.1/gitmastery-beta-arm64"
    sha256 "faabdfc839a3782105671a829834167f4173bdd1052d52f72c0891ebf2d9daa8"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.8.2-beta.1/gitmastery-beta-amd64"
    sha256 "a0a505f1f035057607438515c9f12bc45557cdc6080e0d83fa276bc5c719d98c"
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
