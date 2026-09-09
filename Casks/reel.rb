cask "reel" do
  version "0.6.0"
  sha256 "07f4c61640e5033bbfbac3ccfbc7b749f391c9bb860254d960632c91d8b78a5a"

  url "https://github.com/btj93/reel/releases/download/v#{version}/Reel.app.zip"
  name "Reel"
  desc "Scrollable tiling window manager"
  homepage "https://github.com/btj93/reel"

  depends_on macos: :sonoma

  app "Reel.app"
  binary "#{appdir}/Reel.app/Contents/MacOS/reel-msg"

  preflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{staged_path}}/Reel.app"]
  end

  zap trash: "~/.config/reel"
end
