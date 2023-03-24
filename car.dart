class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle({String brand = "", String model = "", int year = 0})
      : brand = brand,
        model = model,
        year = year;

  void drive() {
    print("The $brand $model ($year) is being driven.");
  }
}

class Car extends Vehicle {
  int numDoors;

  Car({
    String brand = '',
    String model = '',
    int year = 0,
    int numDoors = 0,
  })  : numDoors = numDoors,
        super(brand: brand, model: model, year: year);

  @override
  void drive() {
    print("The $brand $model ($year) with $numDoors doors is being driven.");
  }
}
void main() {
  Car car = Car(brand: "Toyota", model: "civic", year: 2022, numDoors: 4);

  car.drive();
}
