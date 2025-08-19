class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "4.10.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v4.10.0/gitmastery-arm64"
    sha256 "81ba776a5afc83f466daead27dd7e53a494309db9276e4a56cb8d7055f6f6503"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v4.10.0/gitmastery-amd64"
    sha256 "b943827967f019aa535590b5374b68973ee4276d14450366ca8984863a28681d"
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
