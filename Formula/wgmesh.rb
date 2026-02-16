class Wgmesh < Formula
  desc "WireGuard mesh network builder - decentralized peer discovery and encrypted networking"
  homepage "https://github.com/atvirokodosprendimai/wgmesh"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-darwin-arm64"
      sha256 "c72ebe09edb40a9726db270db8675c41c47b5bee0544df6a550a093222edf5cc"
    end

    on_intel do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-darwin-amd64"
      sha256 "404727cdba40d3bd997ae079705fce3ac94f8f42c5323e6e78d2c3e64c6b1492"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-linux-arm64"
      sha256 "75d14826153a0a323fccd1d562f35712da9b8ef9ff98ba5d710bcc4c6ed28f93"
    end

    on_intel do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-linux-amd64"
      sha256 "97eca3dfc67720b84f57ee0125e0859e4d452e740ee708983016c8c4e39ce446"
    end
  end

  def install
    binary = Dir["wgmesh-*"].first || "wgmesh"
    bin.install binary => "wgmesh"
  end

  test do
    assert_match "wgmesh", shell_output("#{bin}/wgmesh version 2>&1", 0)
  end
end
