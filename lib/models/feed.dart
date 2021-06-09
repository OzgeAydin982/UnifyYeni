import 'package:unify_app/models/user.dart';
import 'package:unify_app/utils/utils.dart';

// Feed data can be managed here
class Feed {
  String id, userId;
  String createdAt;
  String description =
      'Stopped here for a light bite. The staff were very good at suggesting local dishes to try. They have a local potato dish that is so good!';
  String bannerImg = AvailableImages.postBanner['assetPath'];
  String userName, userImage;

  Feed(this.id, this.createdAt, this.userId, this.userName, this.userImage);
}

final List<Feed> feeds = [
  Feed("1", '19 Aug', myusers[0].id, myusers[0].name, myusers[0].photo),
  Feed("2", '20 Aug', myusers[1].id, myusers[1].name, myusers[1].photo),
  Feed("3", '22 Aug', myusers[2].id, myusers[2].name, myusers[2].photo),
  Feed("4", '1 Sept', myusers[3].id, myusers[3].name, myusers[3].photo),
];