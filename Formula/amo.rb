class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.8"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.8/amo_darwin_amd64"
      sha256 "9369a791c6f4567dbcdbe7aec08043eff364cc4055e423edf6e2dff622d26ca6"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.8/amo_darwin_arm64"
      sha256 "1434b1bf699bceed3ad3d972f42981f5fed62b8204f48dd1a9d3ed8a2e720c3b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.8/amo_linux_amd64"
      sha256 "8e891ed8318ec8cd6ec79c3f9dd5beaa13790a6e1deab8915eaab52cd5074896"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.8/amo_linux_arm64"
      sha256 "4a51b8e36e0374c9ce3c7073e3fbf7cc89aeec159d7980d53c5b754fca97c638"
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
