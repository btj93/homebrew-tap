cask "reel" do
  version "0.2.4"
  sha256 "51ad6cbce6c500b1880f66a953aaa7252164ab956829d7391ea1da64316877c2"

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
