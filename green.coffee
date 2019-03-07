command: "ESC=`printf \"\e\"`; ps -A -o %mem | awk '{s+=$1} END {print \"\" s}'"

refreshFrequency: 30000

render: (output) ->
    "<span class='memText'>⇅ #{output}</span>"

style: """
  right: 25%
  background-color: #b8bb26
  height: 20px

  width: 60px;

.memText
    color: #282828
    font: 12px Menlo
    padding-left: 15px
"""
