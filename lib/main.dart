import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyWeatherApp());
}

class MyWeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Погода'),
        ),
        body: WeatherScreen(),
      ),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange, Colors.purple, Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Импорт изображения для визуализации погоды (например, солнце, облака, дождь)
            // Image.asset('assets/sun.png', width: 100, height: 100),

            // Случайное определение погоды
            Text(getRandomWeather(),
                style: TextStyle(color: Colors.white, fontSize: 24)),
            
            // Отображение максимальной и минимальной температуры
            Text('Макс: 28°C, Мин: 18°C',
                style: TextStyle(color: Colors.white, fontSize: 18)),

            // Отображение времени начала дня и вечера
            Text('Начало дня: 7:00 AM, Начало вечера: 7:00 PM',
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
      ),
    );
  }

  String getRandomWeather() {
    // Список возможных погодных условий
    List<String> weatherConditions = ['Солнечно', 'Облачно', 'Дождь', 'Снег'];

    // Получение случайного индекса из списка
    int randomIndex = Random().nextInt(weatherConditions.length);

    // Возвращение случайного погодного условия
    return weatherConditions[randomIndex];
  }
}
