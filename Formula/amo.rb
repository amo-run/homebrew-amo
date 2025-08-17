class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.16"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.16/amo_darwin_amd64"
      sha256 "0cc11266c673d720d053cc2cf37874f24268b91091850dc3ebe1fe5a4bccaaac"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.16/amo_darwin_arm64"
      sha256 "9bf2bde5d819c63ac25eefc04ea5897a430ad19fa368ab41836d4256da2e924d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.16/amo_linux_amd64"
      sha256 "184d9798cba2513122a2d85914fef6d9af43f877ca93ec526d8eb5d50caf9c85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.16/amo_linux_arm64"
      sha256 "2a5001522ccff62b4a9e6680de3a68e09a194f89699a87fef98e8f094476d18d"
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
