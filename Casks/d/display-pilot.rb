cask "display-pilot" do
  version "1.5.0.0"
  sha256 "fedc92cf50f1f3264709b4dffc031aa456bd8f252fea03f72f36eb968586cd4b"

  url "https://qspublic.s3.ap-southeast-1.amazonaws.com/qspublic/qs_app/1001/Display%20Pilot%202Setup-#{version}-release.dmg",
      verified: "qspublic.s3.ap-southeast-1.amazonaws.com/qspublic/"
  name "Display Pilot 2"
  desc "Display control utility"
  homepage "https://www.benq.com/en-ap/monitor/software/display-pilot-2.html"

  livecheck do
    url "https://www.benq.com/en-ap/monitor/software/display-pilot-2/spec.html"
    regex(/macOS\s*<.*?>\s*v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: ">= :big_sur"

  app "Display Pilot 2.app"

  zap trash: "~/Library/Preferences/com.benq.DisplayPilot2.plist"
end
