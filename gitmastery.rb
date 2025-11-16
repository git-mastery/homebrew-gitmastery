class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "6.0.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v6.0.0/gitmastery-arm64"
    sha256 "924bc8dff779632c5a9e1ab4fcb4a39b444d157fbb927346eeae081d65be6bd2"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v6.0.0/gitmastery-amd64"
    sha256 "c9159f5768da2da5c07e7f0b1320c3666073a91c2726f93e160fa553ea227dd6"
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
