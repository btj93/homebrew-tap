cask "reel" do
  version "0.2.3"
  sha256 "25a922e7fba51b71c80a8425bb7223b02d9b8aa31a752c3f8a596cf02026c2d8"

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
