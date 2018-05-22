class GamMac < Formula
  homepage "https://github.com/jay0lee/GAM"
  url "https://github.com/jay0lee/GAM/archive/v4.40.tar.gz"
  version "4.40"
  sha256 "01ce48e0ac79f35ba6c891e54156c67af232f210e98dea2b3178186659064ee0"
  head "https://github.com/jay0lee/GAM.git"

  def install
    prefix.install Dir["*"]
    # prefix.install_symlink "/Users/#{ENV["USER"]}/Dropbox (Good Eggs)/GAM/client_secrets.json" => "client_secrets.json"
    # prefix.install_symlink "/Users/#{ENV["USER"]}/Dropbox (Good Eggs)/GAM/oauth2service.json" => "oauth2service.json"
    bin.install_symlink prefix/"src/gam.py" => "gam"
  end

  test do
    system "#{bin}/gam | grep 'GAM 4.40'"
  end
end
