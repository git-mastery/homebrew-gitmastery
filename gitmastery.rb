class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "5.2.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v5.2.0/gitmastery-arm64"
    sha256 "8dc37aa4f4526b65ab6df73e40b3bc14754f11287b219ca472bb6bc025c2f4d2"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v5.2.0/gitmastery-amd64"
    sha256 "c2519b0869065a8cc4992c58ecdc98aebe50502638c897d59ff0f48eab743905"
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
