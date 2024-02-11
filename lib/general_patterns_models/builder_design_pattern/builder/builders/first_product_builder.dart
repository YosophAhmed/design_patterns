import '../../product.dart';
import '../builder_interface.dart';

class GamingComputerBuilder implements ComputerBuilder {
  final Computer _gamingComputer = Computer('', 0, 0, false);

  @override
  void buildProcessor() {
    _gamingComputer.processor = 'High-end Gaming Processor';
  }

  @override
  void buildRAM() {
    _gamingComputer.ram = 16;
  }

  @override
  void buildStorage() {
    _gamingComputer.storage = 1000;
  }

  @override
  void buildGraphicsCard() {
    _gamingComputer.hasGraphicsCard = true;
  }

  @override
  Computer getResult() {
    return _gamingComputer;
  }
}
