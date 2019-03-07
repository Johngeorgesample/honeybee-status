command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 5000


render: (output) ->
  "<span class='cpuText'><span class='cpuIcon'>☵</span> #{output}</span>"

style: """
  right: 29%
  background-color: #d3869b
  height: 20px

  width: 85px;

.cpuText
    font: 12px Menlo
    padding-left: 15px

.cpuIcon
   font: 12px Font Awesome 5 Pro
"""
