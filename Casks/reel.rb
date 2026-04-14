cask "reel" do
  version "0.2.0"
  sha256 "5939eede6f8a6742a06fc0d033d954c684104b8037033423edd60fca133b051b"

  url "https://github.com/btj93/reel/releases/download/v#{version}/Reel.app.zip"
  name "Reel"
  desc "Scrollable tiling window manager for macOS"
  homepage "https://github.com/btj93/reel"

  depends_on macos: ">= :sonoma"

  app "Reel.app"
  binary "#{appdir}/Reel.app/Contents/MacOS/reel-msg"

  zap trash: "~/.config/reel"
end
