import 'package:lab4_tutorial1/lab4_tutorial1.dart' as lab4_tutorial1;

class User {
  int id = 0;
  String name = "";
  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}

class Password {
  String value = "";
  bool isValid() {
    if (value.length > 8)
      return true;
    else
      return false;
  }

  @override
  String toString() {
    return 'Password(value: $value)';
  }
}

// Long form constructor
class UserV1 {
  // Long form constructor
  UserV1(int id, String name) {
    this.id = id;
    this.name = name;
  }
  int id = 0;
  String name = "";
}

// Short form constructor
class UserV2 {
  UserV2(this.id, this.name);
  int id;
  String name;
}

// named constructor
class UserV3 {
  int id = 0;
  String name = "";
  UserV3.anonymous() {
    id = 1;
    name = "Mahesh_Shah";
  }
  @override
  String toString() {
    return 'UserV3(id: $id, name: $name)';
  }
}

//  Forwarding constructors
class UserV4 {
  int id;
  String name;

  UserV4(this.id, this.name);

  UserV4.namedCon() : this(4, "Shah");

  @override
  String toString() {
    return 'UserV4(id: $id, name: $name)';
  }
}

//  Adding named parameters
class UserV5 {
  int id;
  String name;

  UserV5({this.id = 0, this.name = "Shah"});

  UserV5.namedCon() : this();

  @override
  String toString() {
    return 'UserV5(id: $id, name: $name)';
  }
}

// private members
class UserV6 {
  int _id;
  String _name;

  UserV6({int id = 0, String name = "Shah"})
      : _id = id,
        _name = name;

  @override
  String toString() {
    return 'UserV6(id: $_id, name: $_name)';
  }
}

//  Checking for errors
class UserV7 {
  int _id;
  String _name;

  UserV7({int id = 0, String name = 'anonymous'})
      : assert(id >= 0),
        assert(name.isNotEmpty),
        _id = id,
        _name = name;

  @override
  String toString() {
    return 'UserV7(id: $_id, name: $_name)';
  }
}

// challenges

class Student {
  Student(this.firstName, this.lastName, this.grade);

  final String firstName;
  final String lastName;
  int grade;

  @override
  String toString() => '$firstName $lastName: $grade';
}

class Sphere {
  const Sphere({required int radius})
      : assert(radius > 0),
        _radius = radius;

  final int _radius;

  double get volume => 4 / 3 * pi * _radius * _radius * _radius;
  double get area => 4 * pi * _radius * _radius;

  static const double pi = 3.14159265359;
}

void main() {
  /*
    // class and object
    final user = User();
    user.id = 1;
    user.name = "mahesh";
    print("user id : ${user.id}\nuser name : ${user.name}");
    // user = User(); // We can't reassign a new object to final object
    // For creating a constant object there need to be a constant constructor and all the variables need to be final.

    // If you try to print user like below before override the toString method then you get "Instance of 'User'".
    print(user);

    // Serialized user object
    print(user.toJson());

  */

  /*

    // Cascade notation

    // When you created your User object above, you set its
    // parameters like so:
    // final user = User();
    // user.name = 'Ray';
    // user.id = 42;
    // However, Dart offers a cascade operator (..) that allows you
    // to chain together multiple assignments on the same object
    // without having to repeat the object name. The following
    // code is equivalent:

    final user = User()
      ..name = 'Ray'
      ..id = 42;

    print(user);

  */

  /*
    // Mini-exercises

    // 1. Create a class called Password and give it a string
    // property called value.
    // 2. Override the toString method of Password so that it
    // prints value.
    // 3. Add a method to Password called isValid that returns
    // true only if the length of value is greater than 8.

    var password = Password();
    password.value = "123";
    print(password.isValid());
  */

  /*
    // Constructors

    // Constructors are methods that create, or construct, instances
    // of a class. That is to say, constructors build new objects.
    // Constructors have the same name as the class, and the
    // implicitreturn type of the constructor method is also the
    // same type as the class itself.

    // Default constructor

    // As it stands, your User class doesn’t have an explicit
    // constructor. In cases like this, Dart provides a default
    // constructor that takes no parameters and just returns an
    // instance of the class. For example, defining a class like this:

    // class Address { var
    //   value = '';
    // }

    // Is equivalent to writing it like this:

    // class Address {
    //   Address();
    //   var value = '';
    // }
  */

  /*

    // Custom constructors

    // Long-form constructor
    var user1 = UserV1(1, "Mahesh"); // Two arguments are compulsory
    print(user1.id);
    print(user1.name);

    // Short-form constructor
    var user2 = UserV2(2, "Mahesh Shah");
    print(user2.id);
    print(user2.name);

    //Named constructors

    // Dart also has a second type of generative constructor called a
    // named constructor, which you create by adding an identifier
    // on to the class name. It takes the following pattern:
    // ClassName.identifierName()

    final anonymousUser = UserV3.anonymous();
    print(anonymousUser);

    //Forwarding constructors

    final user4 = UserV4.namedCon();
    print(user4);

    // Adding named parameters for User
    final user5 = UserV5.namedCon();
    // final user5 = UserV5();
    // final user5 = UserV5(id: 9);
    // final user5 = UserV5(name: "Mahesh");
    // final user5 = UserV5(id: 18, name: "Mahesh");
    // final user5 = UserV5(name: "Virat", id: 18);
    print(user5);

  */

  /*
    // private members
    var user6 = UserV6();
    user6._id = 10;
    print(user6);
  */

  /*
    // Checking for errors
    // An assert statement takes a condition, and if the condition
    // is false, terminates the app. This only happens during
    // debugging, though. The compiler completely ignores assert
    // statements in release builds.

    var user7 = UserV7(id: 1, name: "dvb"); // This is okay
    // var user71 = UserV7(id: -1, name: "dvb"); // If we assign id <0 then give error
    // var user72 = UserV7(id: 1, name: ""); // If we give empty name then give an error
    print(user7);

  */

  /*

    // Mini-exercises
    
    // Given the following class:
    // class Password {
    //   String value = '';
    // }
    // 1. Make value a finalvariable, but not private.

    // class Password {
    //   final value = '';
    // }

    // 2. Add a const constructor as the only way to initialize a
    // Password object.

    // class Password {
    //   const Password(this.value);
    //   final String value;
    // }

  */

  /*

    // Challenges

    // Challenge 1: Bert and Ernie
    // Create a Student class with final firstName and lastName
    // String properties and a variable grade as an int property.
    // Add a constructor to the class that initializes all the
    // properties. Add a method to the class that nicely formats a
    // Studentfor printing. Use the class to create students bert
    // and ernie with grades of 95 and 85, respectively.

    final ernie = Student('Ernie', 'Henson', 95);
    final bert = Student('Bert', 'Oz', 85);
    print('$ernie\n$bert');

    // Challenge 2: Spheres
    // Create a Sphere class with a const constructorthat takes a
    // positive length radius as a named parameter. Add getters
    // for the the volume and surface area but none for the radius.
    // Don’t use the dart:math package but store your own version
    // of pi as a static constant. Use your class to find the volume
    // and surface area of a sphere with a radius of 12.

    const sphere = Sphere(radius: 12);
    final volume = sphere.volume;
    final area = sphere.area;
    print('volume: $volume, area: $area');

  */
}
