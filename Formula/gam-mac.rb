class GamMac < Formula
  homepage "https://github.com/jay0lee/GAM"
  version "4.61"
  url "https://github.com/jay0lee/GAM/releases/download/v#{version}/gam-4.61-macos.tar.xz"
  sha256 "1c11e35d68f34715b96493f7d2e39bb9be04441bc6f64b9c8d188a4e9e1a8cd2"
  head "https://github.com/jay0lee/GAM.git"

  def install
    prefix.install Dir["*"]
    prefix.install "/Users/#{ENV["USER"]}/Library/Mobile Documents/com~apple~CloudDocs/TRICHODEX/GAM/oauth2.txt"
    
    prefix.install_symlink "/Users/#{ENV["USER"]}/Library/Mobile Documents/com~apple~CloudDocs/TRICHODEX/GAM/client_secrets.json" => "client_secrets.json"
    prefix.install_symlink "/Users/#{ENV["USER"]}/Library/Mobile Documents/com~apple~CloudDocs/TRICHODEX/GAM/oauth2service.json" => "oauth2service.json"

    bin.install_symlink prefix/"gam" => "gam"
  end

  test do
    system "#{bin}/gam | grep 'GAM #{version}'"
  end
end
