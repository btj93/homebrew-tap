cask "reel" do
  version "0.5.0"
  sha256 "5b2412b79fe103af0e2ccb99c81777524a52b1ea8b24e550d373735cb993aa9f"

  url "https://github.com/btj93/reel/releases/download/v#{version}/Reel.app.zip"
  name "Reel"
  desc "Scrollable tiling window manager for macOS"
  homepage "https://github.com/btj93/reel"

  depends_on macos: :sonoma

  app "Reel.app"
  binary "#{appdir}/Reel.app/Contents/MacOS/reel-msg"

  preflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{staged_path}/Reel.app"]
  end

  zap trash: "~/.config/reel"
end
