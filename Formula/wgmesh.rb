class Wgmesh < Formula
  desc "WireGuard mesh network builder - decentralized peer discovery and encrypted networking"
  homepage "https://github.com/atvirokodosprendimai/wgmesh"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-darwin-arm64"
      sha256 "4286d03bd82165b0cbf29847a28b507e36b02482149beefb156ed8ab37056bf1"
    end

    on_intel do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-darwin-amd64"
      sha256 "a3e37ff8b262b40aa862d2de72410d073f340b466973f5612aa55cf331113aa3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-linux-arm64"
      sha256 "f277448e3f7626ddbecb1b71976f506bd6f681413b06e86d51e0b288c180d635"
    end

    on_intel do
      url "https://github.com/atvirokodosprendimai/wgmesh/releases/download/v#{version}/wgmesh-linux-amd64"
      sha256 "f8a650e953a2ab12e054c7bbaf5286dfde0e315062feff871e735baea277c17e"
    end
  end

  def install
    binary = Dir["wgmesh-*"].first || "wgmesh"
    bin.install binary => "wgmesh"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/wgmesh --help 2>&1", 0)
  end
end
