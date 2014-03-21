require 'serviceproxy'
require 'rubygems'

wsdl_url = 'http://www.webservicex.net/WeatherForecast.asmx?WSDL'


proxy = ServiceProxy::Client.new(wsdl_url)
weather_info = proxy.GetWeatherByZipCode('ZipCode' =>  '63389')

puts 'Current weather = ' + weather_info
