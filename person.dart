class Person {
  String firstname ;
  String lastname ;
  Person(this.firstname, this.lastname);
  String fullname() {
    return firstname + lastname;
  }
}

class Student extends Person {
  String major;
  Student(String firstname, String lastname, this.major,)
      : super(firstname, lastname);
  String fullname() {
    return "${super.fullname()} ($major)";
  }
}

void main() {
   //Student
  Student num1 = Student("Moin", "Akhter", "student");
  print(num1.fullname());
}
