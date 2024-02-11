import '../product.dart';

abstract class ComputerBuilder {
  void buildProcessor();
  void buildRAM();
  void buildStorage();
  void buildGraphicsCard();
  Computer getResult();
}
