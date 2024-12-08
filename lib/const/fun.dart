import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition) {
    case 'Sunny':
      return Colors.blue;
    case 'Clear':
      return Colors.blue;
    case 'Partly cloudy':
      return Colors.orange;
    case 'Cloudy':
      return Colors.grey;
    case 'Overcast':
      return Colors.indigo;
    case 'Mist':
      return Colors.teal;
    case 'Patchy rain possible':
      return Colors.lightBlue;
    case 'Patchy snow possible':
      return Colors.lightBlue;
    case 'Patchy sleet possible':
      return Colors.lightBlue;
    case 'Patchy freezing drizzle possible':
      return Colors.lightBlue;
    case 'Thundery outbreaks possible':
      return Colors.amber;
    case 'Fog':
    case 'Blowing snow':
    case 'Blizzard':
      return Colors.grey;
    case 'Freezing fog':
      return Colors.grey;
    case 'Patchy light drizzle':
      return Colors.lightBlue;
    case 'Light drizzle':
      return Colors.lightBlue;
    case 'Freezing drizzle':
      return Colors.lightBlue;
    case 'Heavy freezing drizzle':
      return Colors.lightBlue;
    case 'Patchy light rain':
      return Colors.lightBlue;
    case 'Light rain':
      return Colors.lightBlue;
    case 'Moderate rain at times':
      return Colors.lightBlue;
    case 'Moderate rain':
      return Colors.lightBlue;
    case 'Heavy rain at times':
      return Colors.lightBlue;
    case 'Heavy rain':
      return Colors.lightBlue;
    case 'Light freezing rain':
      return Colors.lightBlue;
    case 'Moderate or heavy freezing rain':
      return Colors.lightBlue;
    case 'Light sleet':
      return Colors.lightBlue;
    case 'Moderate or heavy sleet':
      return Colors.lightBlue;
    case 'Patchy light snow':
      return Colors.lightBlue;
    case 'Light snow':
      return Colors.lightBlue;
    case 'Patchy moderate snow':
      return Colors.lightBlue;
    case 'Moderate snow':
      return Colors.lightBlue;
    case 'Patchy heavy snow':
      return Colors.lightBlue;
    case 'Heavy snow':
      return Colors.lightBlue;
    case 'Ice pellets':
      return Colors.grey;
    case 'Light rain shower':
      return Colors.lightBlue;
    case 'Moderate or heavy rain shower':
      return Colors.lightBlue;
    case 'Torrential rain shower':
      return Colors.lightBlue;
    case 'Light sleet showers':
      return Colors.lightBlue;
    case 'Moderate or heavy sleet showers':
      return Colors.lightBlue;
    case 'Light snow showers':
      return Colors.lightBlue;
    case 'Moderate or heavy snow showers':
      return Colors.lightBlue;
    case 'Light showers of ice pellets':
      return Colors.grey;
    case 'Moderate or heavy showers of ice pellets':
      return Colors.grey;
    case 'Patchy light rain with thunder':
      return Colors.amber;
    case 'Moderate or heavy rain with thunder':
      return Colors.amber;
    case 'Patchy light snow with thunder':
      return Colors.indigo;
    case 'Moderate or heavy snow with thunder':
      return Colors.indigo;
    default:
      return Colors.grey;
  }
}
