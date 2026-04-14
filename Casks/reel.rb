cask "reel" do
  version "0.2.1"
  sha256 "9179a7bbc0a1b47258281c764d31b68032593504cb53627860ac14a1d79d761c"

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
