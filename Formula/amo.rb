class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.20"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.20/amo_darwin_amd64"
      sha256 "8f36aaaf91162d8f93e71b0e6ffaa15c843bd815b0452761875d2ed826ad4821"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.20/amo_darwin_arm64"
      sha256 "e68025888c60cb7a905f32bb62e3b98b079ffaed7be2d57ef8d5382bd2a52e7a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.20/amo_linux_amd64"
      sha256 "b63f7ca5fcf56c13f9a17be606fd3533fdd6581f9d80439101a28e03b54b9056"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.20/amo_linux_arm64"
      sha256 "a84be48b79280391d3b4f7db0c4dc8d3e60c11c7ba6d8830510b7f453e26faa3"
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
