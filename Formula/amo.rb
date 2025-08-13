class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.13"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.13/amo_darwin_amd64"
      sha256 "aa2836459d0869f64be075aecfc0198c9d26a6a9f4b1a373c8515a9af0dff19a"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.13/amo_darwin_arm64"
      sha256 "9e2de834dcc61e2cdb9d61abff3f416c95cbebf0f773f5a3eafe405c4cb99217"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.13/amo_linux_amd64"
      sha256 "4c8329449467fc57637403adaf53e4bcfde08e1689814f9b991c4ed3dbeb9e64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.13/amo_linux_arm64"
      sha256 "17c28b3629262a68f9e3af802549108d43629488236a5d430522dda7ab96fc3a"
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
