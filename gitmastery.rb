class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.1.6"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.6/gitmastery-arm64"
    sha256 "5870d7cecbe5e8739b7e7557770d9e23be236122d056d0c963458bee0c97a7d4"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.1.6/gitmastery-amd64"
    sha256 "fcda88a00fed91bef7ab3ff6e8d6f9023aa41697b32ede529cd8385065e19889"
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
