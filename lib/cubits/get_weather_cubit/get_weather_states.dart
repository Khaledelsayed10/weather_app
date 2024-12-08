import 'package:weather_app/models/weather_model.dart';

abstract class WeatherStates {}

class WeatherinitialState extends WeatherStates {}

class WeatherSuccess extends WeatherStates {
  final WeatherModel weatherModel;

  WeatherSuccess(this.weatherModel);
}

class WeatherFailure extends WeatherStates {
  final String errorMessage;

  WeatherFailure(this.errorMessage);
}
