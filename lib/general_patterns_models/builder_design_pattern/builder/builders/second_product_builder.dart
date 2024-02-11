import '../../product.dart';
import '../builder_interface.dart';

class OfficeComputerBuilder implements ComputerBuilder {
  final Computer _officeComputer = Computer('', 0, 0, false);

  @override
  void buildProcessor() {
    _officeComputer.processor = 'Standard Office Processor';
  }

  @override
  void buildRAM() {
    _officeComputer.ram = 8;
  }

  @override
  void buildStorage() {
    _officeComputer.storage = 500;
  }

  @override
  void buildGraphicsCard() {
    _officeComputer.hasGraphicsCard = false;
  }

  @override
  Computer getResult() {
    return _officeComputer;
  }
}
