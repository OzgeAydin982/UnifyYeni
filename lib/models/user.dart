import 'package:unify_app/utils/utils.dart';

class MyUser {
  String id;
  String name;
  String photo;
  String location;
  String gender;
  int age;
  String FeedText;

  MyUser(this.id, this.name, this.photo, this.location, this.gender, this.age, this.FeedText);
}

final List<MyUser> myusers = [
  MyUser("1", 'Alice Wonder', AvailableImages.woman1['assetPath'], 'USA','F', 29, 'Hello I am Alice! Looking for a cat to adopt!'),
  MyUser("2", 'Robin Watkins', AvailableImages.man1['assetPath'], 'USA', 'F', 24, 'Hello'),
  MyUser("3", 'Craig Jordan', AvailableImages.man2['assetPath'], 'USA', 'M', 28, 'Hello'),
  MyUser("4", 'Charlotte Mckenzie', AvailableImages.woman2['assetPath'], 'USA','F', 23, 'Hello'),
  MyUser("5", 'Rita Pena', AvailableImages.woman3['assetPath'], 'USA','F', 25, 'Hello'),
  MyUser("6", 'Robin Mcguire', AvailableImages.man3['assetPath'], 'USA','M', 29, 'Hello'),
  MyUser("7", 'Angelina Love', AvailableImages.woman4['assetPath'], 'USA','F', 22, 'Hello'),
  MyUser("8", 'Louis Diaz', AvailableImages.man4['assetPath'], 'USA','M', 23, 'Hello'),
  MyUser("9", 'Kyle Poole', AvailableImages.man5['assetPath'], 'USA','M', 25, 'Hello'),
  MyUser("10", 'Brenda Watkins', AvailableImages.woman5['assetPath'], 'USA','F', 26, 'Hello'),
];

final List<String> userHobbies = [
  "Dancing", "Hiking", "Singing", "Reading", "Fishing"
];