command: "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep ' SSID' | cut -c 18-38"

refreshFrequency: 10000


render: (output) ->
  "<span class='wifiText'>☵ #{output}</span>"

style: """
  right: 35%
  background-color: #fb4934
  height: 20px
  white-space: nowrap
  overflow: auto

  width: 85px;

.wifiText
    font: 12px Menlo
    padding-left: 15px
"""
