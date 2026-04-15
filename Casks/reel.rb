cask "reel" do
  version "0.2.5"
  sha256 "8a6d40d301aee31912f907ff2f5653a3350c49eedcbb8b3d5ba30e935400d972"

  url "https://github.com/btj93/reel/releases/download/v#{version}/Reel.app.zip"
  name "Reel"
  desc "Scrollable tiling window manager for macOS"
  homepage "https://github.com/btj93/reel"

  depends_on macos: ">= :sonoma"

  app "Reel.app"
  binary "#{appdir}/Reel.app/Contents/MacOS/reel-msg"

  preflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{staged_path}/Reel.app"]
  end

  zap trash: "~/.config/reel"
end
