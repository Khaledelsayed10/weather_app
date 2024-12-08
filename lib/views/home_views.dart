import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/search_viwes.dart';
import 'package:weather_app/widget/no_weather_body.dart';
import 'package:weather_app/widget/weather_info_body.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Weather App',
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return const SearchViwes();
                    }),
                  );
                },
                icon: const Icon(
                  Icons.search,
                ))
          ],
        ),
        body: BlocBuilder<GetWeatherCubit, WeatherStates>(
          builder: (context, state) {
            if (state is WeatherinitialState) {
              return const NoWeatherBody();
            } else if (state is WeatherSuccess) {
              return WeatherInfoBody(
                weather: state.weatherModel,
              );
            } else {
              return const Text('opps there was an error');
            }
          },
        ));
  }
}
