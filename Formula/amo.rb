class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.22"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.22/amo_darwin_amd64"
      sha256 "d9dce0bdb0981265dfa9f8f7868ff2d54403fc5ac4e3efdff8fe7e17bd2566b8"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.22/amo_darwin_arm64"
      sha256 "e84fcc9b4d5a9dd8eb3d358811582719c5cfd935a045c2bffe8b6fa7bc122874"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.22/amo_linux_amd64"
      sha256 "ef8f28c2a59b2d492f333dfb1df6cb54ce2629baf68c220488f996f14ad754bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.22/amo_linux_arm64"
      sha256 "34a18dfacb601dc2f640a3353e7ea197159cc136383ec2a074221b68bbbb43bf"
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
