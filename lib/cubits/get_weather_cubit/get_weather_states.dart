import 'package:weather_app/models/weather_model.dart';

class WeatherStates{}

class WeatherinitialState extends WeatherStates {}

class WeatherLoadedState extends WeatherStates{
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}

class WeatherfailureState extends WeatherStates{
  final String errorMessage;

  WeatherfailureState(this.errorMessage);
}