import 'dart:ffi';
import 'dart:io';
import 'dart:math';

void main() {
  print(
      'Добро пожаловать. Выберите кто будет отгадывать: 1 - Пользователь; 2 - Компьютер');

  startGame();

  // binarySearch(1);

  randomSearch(100);
}

// 1) Нужно добавить вариант игры наоборот: компьютер загадывает случайное число от 1 до 100, а пользователь должен отгадать.
// Компьютер выводит сообщения:
// greater, если число больше догадки
// less, если число меньше догадки
// yes, если пользователь угадал
// Указания:

void startGame() {
  int userAnswer = 2;
  int userAnswer2 = 1;

  String name = '';
  stdin.readLineSync();

  if (userAnswer == 2) {
    print('Компьютер угадавыает число $userAnswer');
  } else if (userAnswer2 == 1) {
    print('Пользователь угадывает число $userAnswer2');
  } else {
    print('default');
  }
  stdout.write('Введите предпологамое число');
}

void binarySearch(int randomNum) {
  print('Компьютер загадал число от 1 до 100. Попробую угадать его.');

  int min = 1;
  int max = 100;
  int mid = min + Random().nextInt(max - min);
  int counter = 1;

  while (mid != randomNum) {
    mid = min + Random().nextInt(max - min);

    if (mid > randomNum) {
      print('less');
      max = mid;
      counter++;
    } else if (mid < randomNum) {
      print('greater');
      min = mid;
      counter++;
    }
  }
  print('Загаданное число было $randomNum. Количество шагов: $counter');
}

randomSearch(randomNum){

int min = 1;
int max = 100;
int mid = min + Random().nextInt(max - min);
int counter = 1;

while (mid != randomNum) {
mid = min + Random().nextInt(max - min);
  print('Ваше число $mid?');

if (mid > randomNum) {
print('less');
max = mid; 
counter++;
} else if (mid < randomNum) {
print('greater');
min = mid; 
counter++;
}
}
}