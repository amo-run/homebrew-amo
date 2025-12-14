class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.18"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.18/amo_darwin_amd64"
      sha256 "8b27fec4bd030120797d50b5d287fd2686d85e6c286e9dfc324fa275d4d2d2b0"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.18/amo_darwin_arm64"
      sha256 "0f94e6d51a6674e20b91ea72e52561efc8614500e2a550ae19674e2ae74dc7ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.18/amo_linux_amd64"
      sha256 "3167c941b120861171019af854a7a25c1e7e71f336669e4703cfe50da841e0ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.18/amo_linux_arm64"
      sha256 "854b8fa2d77bd42ba9f0e1484219460abf5e9719a1a4f0a3045ea5ee4d31f44f"
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
