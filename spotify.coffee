command: """
IFS='|' read -r theArtist theName <<<"$(osascript <<<'tell application "Spotify"
        set theTrack to current track
        set theArtist to artist of theTrack
        set theName to name of theTrack
        return theArtist & "|" & theName
    end tell')"
echo "$theArtist - $theName"
"""
render: (output) -> """
   	<span><i class="fas fa-music"></i> #{output}</span>
"""

style: """
  height: 20px
  width: 220px
  right: 49em
  background-color: #83a598
  font: 12px Menlo
  padding-left: 1%
  padding-right: 1%
  overflow: auto
  white-space: nowrap

  span {
      position: relative
      top: 13%
  }
"""

