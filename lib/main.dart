import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/const/fun.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/home_views.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  MaterialColor currentColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: BlocListener<GetWeatherCubit, WeatherStates>(
        listener: (context, state) {
          if (state is WeatherSuccess) {
            setState(() {
              currentColor = getThemeColor(state.weatherModel.weatherCondition);
            });
          }
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Weather App',
          theme: ThemeData(
            primarySwatch: currentColor,
            appBarTheme: AppBarTheme(
              color: currentColor,
            ),
          ),
          home: const HomeViews(),
        ),
      ),
    );
  }
}
