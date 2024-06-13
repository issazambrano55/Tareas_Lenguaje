import 'dart:math';

class Circulo {
  double radio;
  String color;

  Circulo(this.radio, this.color);

  double get radios => radio;

  set radios(double radios) {
    if (radios <= 0) {
      throw ArgumentError('El radio no puede ser negativo y debe ser mayor a cero');
    }
    radio = radios;
  }


  String get colores => color;

  set colores(String colores) {
    if (colores.isEmpty) {
      throw ArgumentError('Debe de colocar un color');
    }
    color = colores;
  }

  double get calcularArea => pi * radios * radio;

  double get calcularPerimetro => 2 * pi * radio;
}

void main() {

  Circulo cCirculos = Circulo(12.8, 'Lila');

  print('Radio: ${cCirculos.radio}');
  print('Color: ${cCirculos.color}');

  print('Area: ${cCirculos.calcularArea}');

  print('Perimetro: ${cCirculos.calcularPerimetro}');
}
