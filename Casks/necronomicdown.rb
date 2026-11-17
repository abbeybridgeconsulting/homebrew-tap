cask "necronomicdown" do
  version "0.1.0"
  sha256 "194df7eaf54fcb59a2433c7d7237c2a53128aee43f5c1915d281b40d35a4bb90"

  url "https://raw.githubusercontent.com/abbeybridgeconsulting/necronomicdown-releases/f7ad9a883a99fc126298eeb8f861c91f10655f05/downloads/v#{version}/Necronomicdown_#{version}_aarch64.dmg"
  name "Necronomicdown"
  desc "Local Markdown reader and editor"
  homepage "https://github.com/abbeybridgeconsulting/necronomicdown-releases"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Necronomicdown.app"

  caveats <<~EOS
    Necronomicdown is ad hoc signed and not notarised by Apple.
    If macOS blocks its first launch, open System Settings > Privacy & Security
    and select Open Anyway after attempting to open the app.

    To enable Finder previews, turn on Markdown Reader Preview in
    System Settings > General > Login Items & Extensions > Quick Look.
  EOS
end
