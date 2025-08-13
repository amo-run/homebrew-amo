class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.15"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.15/amo_darwin_amd64"
      sha256 "3e6482c6e7568dc348129b8a7a59b156369d7288846bc2eccec10f6fe1fddbcf"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.15/amo_darwin_arm64"
      sha256 "b6846177aeefa65252296fc37061fae1e022cf26d8fa14554d078484686a73da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.15/amo_linux_amd64"
      sha256 "fc24fb2ad16bd3bc60793d0b5e00695eaa4e5da534cb0f452bf07c39ec7fb03a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.15/amo_linux_arm64"
      sha256 "46929c737dfa106280d1ba46c2268984ba6878449424c8bef7a9b33062df5be0"
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
