import 'package:unify_app/utils/utils.dart';

class MyUser {
  String id;
  String name;
  String photo;
  String location;
  String gender;
  int age;

  MyUser(this.id, this.name, this.photo, this.location, this.gender, this.age);
}

final List<MyUser> myusers = [
  MyUser("1", 'Alice Stone', AvailableImages.woman1['assetPath'], 'USA','F', 29),
  MyUser("2", 'Robin Watkins', AvailableImages.man1['assetPath'], 'USA', 'F', 24),
  MyUser("3", 'Craig Jordan', AvailableImages.man2['assetPath'], 'USA', 'M', 28),
  MyUser("4", 'Charlotte Mckenzie', AvailableImages.woman2['assetPath'], 'USA','F', 23),
  MyUser("5", 'Rita Pena', AvailableImages.woman3['assetPath'], 'USA','F', 25),
  MyUser("6", 'Robin Mcguire', AvailableImages.man3['assetPath'], 'USA','M', 29),
  MyUser("7", 'Angelina Love', AvailableImages.woman4['assetPath'], 'USA','F', 22),
  MyUser("8", 'Louis Diaz', AvailableImages.man4['assetPath'], 'USA','M', 23),
  MyUser("9", 'Kyle Poole', AvailableImages.man5['assetPath'], 'USA','M', 25),
  MyUser("10", 'Brenda Watkins', AvailableImages.woman5['assetPath'], 'USA','F', 26),
];

final List<String> userHobbies = [
  "Dancing", "Hiking", "Singing", "Reading", "Fishing"
];