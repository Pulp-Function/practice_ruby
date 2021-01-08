require "http"

system "clear"
puts "Welcome to the weather app!"

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=Chicago&units=imperial&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")
weather_data = response.parse

temperature = weather_data["main"]["temp"]
description = weather_data["weather"][0]["description"]
puts "The temperature is #{temperature} degrees Farenheit with #{description}."
