class People {
  String name;
  int age;
  
  People(this.name, this.age);

  void introduce(){
    print("Hello, My name is $name and i am $age years old");
  }
}

class Student extends People {
  String course;
  Student(
    super.name,
    super.age,
    this.course,
  );

  @override
  void introduce(){
    print("Hello, My name is $name, i am $age years old and studiyng $course");
  }
}

class Professor extends People{
  String subject;

  Professor(super.name, super.age, this.subject);

  @override
  void introduce(){
    print("Hello, My name is $name, i am $age years old and i teaches $subject");
  }

}

void main(){
  People diogo = People('Diogo', 22);

  diogo.introduce();

  final student1 = Student(diogo.name, diogo.age, "Software Engineer");

  student1.introduce();

  final professor = Professor("Mattew", 45, "OOP");

  professor.introduce();
  
}
