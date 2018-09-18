class GamMac < Formula
  homepage "https://github.com/jay0lee/GAM"
  version "4.61"
  url "https://github.com/jay0lee/GAM/releases/download/v#{version}/gam-4.61-macos.tar.xz"
  sha256 "0a17ff514d6351dda570202d9a1a3bbd2d95baceece8f5671e6a2be7ced9a468"
  head "https://github.com/jay0lee/GAM.git"

  def install
    prefix.install Dir["*"]
    prefix.install_symlink "/Users/#{ENV["USER"]}/Library/Mobile Documents/com~apple~CloudDocs/TRICHODEX/GAM/client_secrets.json" => "client_secrets.json"
    prefix.install_symlink "/Users/#{ENV["USER"]}/Library/Mobile Documents/com~apple~CloudDocs/TRICHODEX/GAM/oauth2service.json" => "oauth2service.json"
    prefix.install_symlink "/Users/#{ENV["USER"]}/Library/Mobile Documents/com~apple~CloudDocs/TRICHODEX/GAM/oauth2.txt" => "oauth2.txt"
    bin.install_symlink prefix/"src/gam.py" => "gam"
  end

  test do
    system "#{bin}/gam | grep 'GAM 4.40'"
  end
end
