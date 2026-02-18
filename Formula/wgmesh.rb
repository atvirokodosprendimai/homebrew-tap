class Wgmesh < Formula
  desc "WireGuard mesh network builder - decentralized peer discovery and encrypted networking"
  homepage "https://github.com/atvirokodosprendimai/wgmesh"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-darwin-arm64"
      sha256 "f0baead2698f23a3745bb89f3d97a629b077a14c5c492b5b7a18f181661dcacf"
    end

    on_intel do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-darwin-amd64"
      sha256 "5a3d5af75d3001f314866f29421311c757790c23bd6165d32d0c83f19d16a4fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-linux-arm64"
      sha256 "058b78e59ae1b2eefe3de61960f0881a8c8c7dc3465b5552ea253f79f74bed1f"
    end

    on_intel do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-linux-amd64"
      sha256 "3ea8ec275203e1dbb424a996b4a1d1645448cc3aba1a2d6ea0101a44eab6ab1e"
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
