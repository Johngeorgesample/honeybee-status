refreshFrequency: 5000
command: "date +\"%a %b %d - %I:%M\""


render: (output) ->
    "<span class='dateText'><span class='clock'>◷</span> #{output}</span>"

style: """
  display: block
  position: absolute
  height: 20px
  width: 180px
  bottom: 0
  top: 0
  left: 100
  right: 0
  background-color: #fabd2f
  z-index: 1

.dateText
    color: #282828
    font: 12px Menlo
    padding-left: 15px

.clock
    font: 16px
    font-family: FontAwesome5FreeSolid
"""
