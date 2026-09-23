cask "edilint" do
  version "0.4.0"

  on_macos do
    on_arm do
      sha256 "22a0a6a97b46110a085de51b971c297c39f42541948b285a37335cc287d3b732"

      url "https://github.com/crb2nu/edilint/releases/download/v#{version}/edilint_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "28818d221309baa80cebc6d08d6704c652f250dad23f594658b5c24779bb46cf"

      url "https://github.com/crb2nu/edilint/releases/download/v#{version}/edilint_#{version}_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    on_arm do
      sha256 "a0b59a7e19b5cf3cad96cf9be99897cc596ef0fdbc9723a71826217212399e88"

      url "https://github.com/crb2nu/edilint/releases/download/v#{version}/edilint_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "a02d761637c172f488177d6cfc72e7699248085a4d8f931e7912b3f79d4bfee8"

      url "https://github.com/crb2nu/edilint/releases/download/v#{version}/edilint_#{version}_linux_amd64.tar.gz"
    end
  end

  name "edilint"
  desc "Pre-send linter for healthcare interchange files"
  homepage "https://github.com/crb2nu/edilint"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "edilint"

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/edilint"]
    end
  end

  # No zap stanza required
end
