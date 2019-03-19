latitude = "yourlat"
longitude = "yourlong"
apiKey = "yourkeyhere"

command: "curl -s 'https://api.forecast.io/forecast/#{apiKey}/#{latitude},#{longitude}?exclude=minutely,hourly,flags'"

refreshFrequency: '15m'

style: """
  height: 20px
  right: 72em
  font: 12px Menlo
  background-color: #fe8019
  padding-left: 1%
  padding-right: 1%

  span {
      position: relative
      top: 13%
  }
"""

render: -> """
 <span><i class="fas fa-cloud"></i> <span class="conditions"></span></span>
"""

update: (output, domEl) ->
  weatherData = JSON.parse(output)

  # current conditions
  current = Math.round(weatherData.currently.temperature) + "°"
  $(domEl).find('.conditions').html(current)
