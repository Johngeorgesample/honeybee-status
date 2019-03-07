command: """
IFS='|' read -r theArtist theName <<<"$(osascript <<<'tell application "Spotify"
        set theTrack to current track
        set theArtist to artist of theTrack
        set theName to name of theTrack
        return theArtist & "|" & theName
    end tell')"
echo "$theArtist - $theName"
"""

refreshFrequency: 2000

style: """
  right: 11%
  background-color: #83a598
  height: 20px
  width: 220px;
  white-space: nowrap
  overflow: auto

  .musicText
    padding-left: 15px
    font: 12px Menlo
"""

render: (output) ->
    "<span class='musicText'>♫ #{output}</span>"

