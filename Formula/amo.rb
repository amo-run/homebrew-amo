class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.10"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.10/amo_darwin_amd64"
      sha256 "3bce8fc787dde13d59075f735f9cd270d11e9858849b99a7e144c82e30f97dc6"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.10/amo_darwin_arm64"
      sha256 "f58cc97e17b13a6d35855a4c6e3951eb06bd1417126443e36c77d6976a15aaad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.10/amo_linux_amd64"
      sha256 "f42ffb4365908ee66c39df9c5375973f19257dfc4c34b7d7a7fccf6515688a93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.10/amo_linux_arm64"
      sha256 "5da745a4eedb9c203f37a1e883aa2d9988c395abbef96b6aa1d80c328d758cc0"
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
