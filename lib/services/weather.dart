import 'package:flutter/material.dart';
import 'location.dart';
import 'networking.dart';
import 'package:clima/screens/location_screen.dart';

const apikey = '8f2cea26598ecb16d42b64c96e7c35e7';
const openWeatheMap = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async{
    var url = '$openWeatheMap?q=$cityName&appid=$apikey&units=metric';
    NetworkHelper networkHelper = NetworkHelper(url: url);
    return await networkHelper.getData();
  }

  Future<dynamic> getLocationWeather() async {
    var latitude;
    var longitude;
    location_finder l = location_finder();
    await l.getCurrentLocation();
    latitude = l.latitude;
    longitude = l.longitude;
    NetworkHelper networkHelper = NetworkHelper(
        url: '$openWeatheMap?lat=${latitude}&lon=${longitude}&appid=$apikey');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}
