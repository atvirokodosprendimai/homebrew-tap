class Wgmesh < Formula
  desc "WireGuard mesh network builder - decentralized peer discovery and encrypted networking"
  homepage "https://github.com/atvirokodosprendimai/wgmesh"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-darwin-arm64"
      sha256 "b488e0a3c2c0ab824a052a5a2fb0eb0c756b46ea6decec6188179fc0a1cf9bfb"
    end

    on_intel do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-darwin-amd64"
      sha256 "019498b336ab3f14942c773623409ab06ad1980fa6dd0eef5a6661bf4d736b2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-linux-arm64"
      sha256 "6d8689702341b0138e857394ea8960f21f64cf9a2d563cf66b36fbe14bd6572e"
    end

    on_intel do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-linux-amd64"
      sha256 "1d401ddd727d718fbadfca0c384c903584c2f661036911e7a31a618cf1268416"
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
