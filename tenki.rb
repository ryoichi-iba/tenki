require 'uri'
require 'net/http'
require 'json'
require 'date'

url = "http://weather.livedoor.com/forecast/webservice/json/v1?city=280010"
uri = URI.parse(url)
res = Net::HTTP.get(uri)
res = JSON.parse(res)


forecasts = res["forecasts"]
tomorrow_forecast = forecasts[1]
telop = tomorrow_forecast["telop"]
location = res["location"]["city"]
day = Date.today.day + 1
sessi = tomorrow_forecast["temperature"]["min"]["celsius"]
sessi2 = tomorrow_forecast["temperature"]["max"]["celsius"]



puts "#{day}日、#{location}は#{telop}でしょう"
puts "最低気温は#{sessi}度でしょう！！"
puts "最高気温は#{sessi2}度でしょう！！"