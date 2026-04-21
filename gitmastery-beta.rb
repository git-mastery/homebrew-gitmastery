class GitmasteryBeta < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.8.2-beta.2"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.8.2-beta.2/gitmastery-beta-arm64"
    sha256 "915c7e7a7725484ad8b8216ca6808fd0139d6adf2ff93c7b943482e29cb064b3"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.8.2-beta.2/gitmastery-beta-amd64"
    sha256 "1eb05d17d184871f5afb4196c9d47590c014aaf111a47e248c3c4fa1e53f3776"
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
