class GamMac < Formula
  homepage "https://github.com/jay0lee/GAM"
  version "4.65"
  url "https://github.com/jay0lee/GAM/releases/download/v#{version}/gam-#{version}-macos.tar.xz"
  sha256 "708e272266a73fd8025d6c81408377bc23fe66a7597a4e06a8708511e04d6489"
  head "https://github.com/jay0lee/GAM.git"

  def install
    prefix.install Dir["*"]

    prefix.install_symlink "/Users/#{ENV["USER"]}/Library/Mobile Documents/com~apple~CloudDocs/TRICHODEX/GAM/client_secrets.json" => "client_secrets.json"
    prefix.install_symlink "/Users/#{ENV["USER"]}/Library/Mobile Documents/com~apple~CloudDocs/TRICHODEX/GAM/oauth2service.json" => "oauth2service.json"

    bin.install_symlink prefix/"gam" => "gam"
    
    system "cp", "/Users/#{ENV["USER"]}/Library/Mobile Documents/com~apple~CloudDocs/TRICHODEX/GAM/oauth2.txt", "#{prefix}"
  end

  test do
    system "#{bin}/gam | grep 'GAM #{version}'"
  end
end
