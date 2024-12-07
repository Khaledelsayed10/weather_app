import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class GetWeatherCubit extends Cubit <WeatherStates>{
  GetWeatherCubit():super(WeatherinitialState());
  WeatherModel? weatherModel;

  getWeather({required String cityName})async{
    try {
  weatherModel =
  await WeatherServices(Dio()) .getCurrentWeather(cityname: cityName);
  emit(WeatherLoadedState(weatherModel!));
}  catch (e) {
   emit(WeatherfailureState(e.toString()));
}
  }
             
   
 
}

