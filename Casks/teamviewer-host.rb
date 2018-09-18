cask 'teamviewer-host' do
  version '13'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.teamviewer.com/download/version_13x/CustomDesign/Install TeamViewerHost-idcgfznjjp.pkg"
  name 'TeamViewer Host TRICHODEX'
  homepage 'https://www.trichodex.com'

  auto_updates true
  conflicts_with cask: 'teamviewer'

  pkg 'Install TeamViewerHost-idcgfznjjp.pkg'

  uninstall delete: "#{staged_path}/#{token}" # This Cask should be uninstalled manually.

  zap trash: [
               '/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
               '~/Library/Application Support/TeamViewer Host',
               '~/Library/Caches/com.teamviewer.TeamViewerHost',
               '~/Library/Logs/TeamViewer',
               '~/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
               '~/Library/Preferences/com.teamviewer.TeamViewerHost.plist',
             ]
end
