class User {
  final String firstName;
  final String lastName;
  final String _email;
  final String _phone;
  final String _address;
  final int _age;

  User({
    required this.firstName,
    required this.lastName,
    String email = '',
    String phone = '',
    String address = '',
    int age = 0,
  })  : _email = email,
        _phone = phone,
        _address = address,
        _age = age;

  String get email => _email;
  String get phone => _phone;
  String get address => _address;
  int get age => _age;

  @override
  String toString() {
    return 'First Name: $firstName, Last name: $lastName, Email: $_email, Phone: $_phone, Address: $_address, Age: ${_age.toString()} years old.';
  }
}

class UserBuilder {
  String firstName;
  String lastName;
  late String _email;
  late String _phone;
  late String _address;
  late int _age;

  UserBuilder({
    required this.firstName,
    required this.lastName,
  });

  void addUserEmail({
    required String email,
  }) =>
      _email = email;

  void addUserPhone({
    required String phone,
  }) =>
      _phone = phone;

  void addUserAddress({
    required String address,
  }) =>
      _address = address;

  void addUserAge({
    required int age,
  }) =>
      _age = age;

  User getUser() => User(
        firstName: firstName,
        lastName: lastName,
        email: _email,
        phone: _phone,
        address: _address,
        age: _age,
      );
}
