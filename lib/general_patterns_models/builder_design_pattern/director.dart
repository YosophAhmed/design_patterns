import 'builder/builder_interface.dart';

class ComputerDirector {
  void constructComputer(ComputerBuilder builder) {
    builder.buildProcessor();
    builder.buildRAM();
    builder.buildStorage();
    builder.buildGraphicsCard();
  }
}