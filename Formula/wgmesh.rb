class Wgmesh < Formula
  desc "WireGuard mesh network builder - decentralized peer discovery and encrypted networking"
  homepage "https://github.com/atvirokodosprendimai/wgmesh"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-darwin-arm64"
      sha256 "8acf9a1486f71068c4b7060c80ea90390e816d9bd9d274177fe9aed4748f8996"
    end

    on_intel do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-darwin-amd64"
      sha256 "712bdb7d87927eea9465228bb43464b1cc0b7b44c28428f57b439b0b6cf6d696"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-linux-arm64"
      sha256 "0b82dc58be21f9cb1cd93ae33176ee3474a370fe3ea74167e0cf39ad64aea669"
    end

    on_intel do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-linux-amd64"
      sha256 "080bc4c981966cfee638efe4283fd6c1e6950cb0f716eaaea83759972bd26c67"
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
