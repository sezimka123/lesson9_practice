import 'dart:io';

void main() {
// print(task1());
// print(task2("34567"));
// print(task3("234"));
// print(task4a(3));
// print(task4b(8));
// task5();
// task6(2, 2, 3);
// task7();
// task9();
// task10(4);
// print(task11(60));
// print(task12("123420"));
task13b();
}

task1() {
  List subjects = ["Maths", "English", "Physics", "Chemistry"];
  print(subjects.first);
  return subjects.last;
}

task2(String number) {
  int product = 1;
  for (int i = 0; i < number.length; i++) {
    product *= int.parse(number[i]);
  }
  return product;
}

task3(String number) {
  String numberChanged = number.replaceRange(1, 2, "0");
  return numberChanged;
}

task4a(int a) {
  switch (a) {
    case 1:
      return ("monday");
    case 2:
      return ("tuesday");
    case 3:
      return ("wednesday");
    case 4:
      return ("thursday");
    case 5:
      return ("friday");
    case 6:
      return ("saturday");
    case 7:
      return ("sunday");
    default:
      return ("there is no such day of the week");
  }
}

task4b(int a) {
  if (a == 1) {
    return ("monday");
  } else if (a == 2) {
    return ("tuesday");
  } else if (a == 3) {
    return ("wednesday");
  } else if (a == 4) {
    return ("thursday");
  } else if (a == 5) {
    return ("friday");
  } else if (a == 6) {
    return ("saturday");
  } else if (a == 7) {
    return ("sunday");
  } else {
    return ("there is no such day of the week");
  }
}

task5() {
  for (int i = 0; i < 8; i++) {
    print("Loading...");
  }
}

task6(int a, int b, int c) {
  if (a + b == c) {
    print("$a + $b = $c");
  } else {
    print("$a * $b * $c = ${a * b * c}");
  }
}

task7() {
  stdout.write("What is your name? ");
  String name = stdin.readLineSync()!;
  stdout.write("How old are you? ");
  String age = stdin.readLineSync()!;
  stdout.write("What is your adress? ");
  String adress = stdin.readLineSync()!;
  stdout.write("What is your hobby? ");
  String hobby = stdin.readLineSync()!;
  print(
      "Your name: $name\nYour age: $age\nYour adress: $adress\nYour hobby: $hobby");

  String myName = "Sezi";
  String myAge = "23";
  String myAdress = "12 mkrn";
  String myHobby = "coding";

  if (name == myName &&
      age == myAge &&
      adress == myAdress &&
      hobby == myHobby) {
    print("Let's be friends");
  } else if (name == myName) {
    print("We have same names");
  } else if (age == myAge) {
    print("We are the same age");
  } else if (adress == myAdress) {
    print("We are neighbours");
  } else if (hobby == myHobby) {
    print("We have the same hobbies");
  } else {
    print("We have nothing in common");
  }
}

task9() {
  int b = 1;
  int sum = 0;
  while (b <= 100) {
    sum += b;
    b++;
  }
  print(sum / 100);
}

task10(int n) {
  print(n + n * 11 + n * 111);
  print(n + n * n + n * n * n);
}

task11(int age) {
  if (age > 0 && age < 7) {
    return "You have to go to kindergarten";
  } else if (age >= 7 && age < 18) {
    return "You have to go to school";
  } else if (age >= 18 && age < 23) {
    return "You have to go to university";
  } else if (age >= 23 && age < 60) {
    return "You have to go to work";
  } else if (age >= 60 && age < 100) {
    return "You have to retire";
  } else {
    return "Wrong age";
  }
}

//не судите строго, просто интересно было, сработает ли чрз bool
task12(String numbers) {
  int sum1 = 0;
  for (int i = 0; i < numbers.length / 2; i++) {
    sum1 += int.parse(numbers[i]);
  }

  int sum2 = 0;
  for (int i = 3; i < numbers.length; i++) {
    sum2 += int.parse(numbers[i]);
  }

  bool isEqual;
  if (sum1 == sum2) {
    isEqual = true;
  } else {
    isEqual = false;
  }
  return isEqual;
}

//эта версия не считывает 0
task13() {
  print("Enter the number 0: ");
  int inputNumber = int.parse(stdin.readLineSync()!);
  int count = 0;
  int sum = 0;
  while (inputNumber != 0) {
    count++;
    sum += inputNumber;
    print("Value is not equal to 0. Enter again: ");
    inputNumber = int.parse(stdin.readLineSync()!);
  }
  print("sum = $sum and average = ${sum / count}");
}

//эта версия считывает 0 тоже
task13b() {
  int count = 0;
  int sum = 0;
  int inputNumber = 0;
  do {
    print("Enter the number 0: ");
    inputNumber = int.parse(stdin.readLineSync()!);
    count++;
    sum += inputNumber;
  } while (inputNumber != 0);
  print("sum = $sum and average = ${sum / count}");
}
