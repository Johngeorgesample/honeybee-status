refreshFrequency: 5000
command: "date +'%m/%d/%y'"

render: (output) -> """
   	<span><i class="far fa-calendar-alt"></i> #{output}</span>
"""

style: """
  height: 20px
  right: 10em
  background-color: #fabd2f
  font: 12px Menlo
  padding-left: 1%
  padding-right: 1%


  span {
      position: relative
      top: 13%
  }
"""
