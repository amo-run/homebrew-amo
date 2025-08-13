class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.14"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.14/amo_darwin_amd64"
      sha256 "b2a8eee826e99fc74187899008350b365a80a2347066b8e57c118e9cadde9e97"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.14/amo_darwin_arm64"
      sha256 "3fd2c8c9b8cb5f97c2f8e864c07cfbbd0fdbfdddf41504b9aee5b401f74da430"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.14/amo_linux_amd64"
      sha256 "ccf38918c24ddb9cc9b3e4153f9c7b6bf073dc6cf0e576276147091a4a50a363"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.14/amo_linux_arm64"
      sha256 "195354bf38fcfd24fdc997d9812e555acd5eb893a7033f5256c8e479f7f7d584"
    end
  end

  def install
    bin.install Dir["amo_*"].first => "amo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/amo version")
    assert_match "amo", shell_output("#{bin}/amo --help")
    system bin/"amo", "tool", "list"
    system bin/"amo", "workflow", "list"
    system bin/"amo", "config", "ls"
  end
end
