import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'leader': leader.toJson(),
    };
  }
}

main() {
  var leader = Employee('홍길동', 41);
  var department = Department('총무부', leader);

  var jsonString = jsonEncode(department.toJson());
  File('company.txt').writeAsStringSync(jsonString);
  print('파일에 쓰기 완료!');
}
