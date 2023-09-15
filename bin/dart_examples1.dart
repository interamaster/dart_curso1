/*
import 'package:dart_examples1/dart_examples1.dart' as dart_examples1;

void main(List<String> arguments) {
  print('Hello world: ${dart_examples1.calculate()}!');
}
*/

///libro dart apprentice fundamnentals:

import 'dart:math';

//enum outside main
enum Tiempo {
  sol,
  dia,
  noche,
  kaak,
}

//functions outside main
String complimentNumero(int number, [String pet = "gato"]) {
  return "$number is a nice number y perro:$pet";
}

//con named params optional y requiered { requiered,...optional}

String complimentNumero2({required int number, String pet = "gato"}) {
  return "$number is a nice number y perro:$pet";
}

//arrow functions

int add(int a, int b) {
  return a + b;
}

//se quitan los {} y el return!!!!

int add2(int a, int b) => a + b;

//clases  van outside main

class User {
  int id =
      0; //member variabke or fields!!!(if filed is public and visible outside world is called property!!!)

  String name =
      ""; //member variabke or fields!!!(if filed is public and visible outside world is called property!!!)

  //JSON serialized method g

  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }

//override to print User

  @override
  String toString() {
    return "user(id: $id ,name: $name)";
  }
}

void main() {
  //clases

  final user1 = new User(); //new is optional
  user1.name = "ole tu";
  user1.id = 1111;

  print(user1); //Instance of 'User'
//after override funct:user(id: 1111 ,name: ole tu)
  print(user1.toJson()); //{"id":1111,"name":"ole tu"}

  //otra forma instaciar una class :cascade notation con 2 puntos y el ; solo al final

  final user2 = new User()
    ..name = "Ray"
    ..id = 22;

  print(user2); //user(id: 22 ,name: Ray)

  final user3 = user2;

  user3.name = "le cambio el nombre al 2";

  print(user3);
  print("user 2 es:$user2");

  //functions
  print(add(2, 3));
  print(add2(4, 5));

  const input = 12;
  final output = complimentNumero(input, "perro");
  print(output);

  final output2 = complimentNumero(input);
  print(output2);

  final output3 = complimentNumero2(number: 22, pet: "lobo");
  print(output3);

  const TiempoHoy = Tiempo.kaak;
  print(TiempoHoy);

  int index = TiempoHoy.index;

  print(index);

  print("Hello world");
  print(2 / 6);
  print(sin(45 * pi / 180));
  print(sqrt(2));
  const number = 10.55;
  int numero2 = number.toInt();
  var numer3 = 10.56;
  //numer3=numer3.toInt();
  print(number.round());
  print("el nuemro 2 es \u1240" + numero2.toString());
  print("numero 2 es $numero2");

  print((numer3 * numero2).toInt());

  const doesTwowqualsOne = (1 != 1 || 2 > 4);
  print(doesTwowqualsOne);
//loops
  while (numero2 < 25) {
    numero2++;
    print(numero2);

    if (numero2 > 23) {
      break;
    }
  }

  do {
    print(numero2);
    numero2 += 2;
  } while (numero2 < 55);

  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }

    print(i);
  }
}
