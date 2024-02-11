import 'dart:developer';

class Computer {
  String processor;
  int ram;
  int storage;
  bool hasGraphicsCard;

  Computer(this.processor, this.ram, this.storage, this.hasGraphicsCard);

  void displayComputer() {
    log("Computer Specs - Processor: $processor, RAM: $ram GB, Storage: $storage GB, Graphics Card: $hasGraphicsCard");
  }
}
