import 'package:unify_app/models/user.dart';
import 'package:unify_app/utils/utils.dart';

// Feed data can be managed here
class Feed {
  String id, userId;
  String createdAt;
  /*String description =
      'Hello I am Alice! Looking for a cat to adopt!';*/
  String bannerImg = AvailableImages.postBanner['assetPath'];
  String userName, userImage;
  String FeedText;
  String description;
  Feed(this.id, this.createdAt, this.userId, this.userName, this.userImage, String feedText, this.description);
}

final List<Feed> feeds = [
  Feed("1", '19 Aug', myusers[0].id, myusers[0].name, myusers[0].photo, myusers[0].FeedText, ''),
  Feed("2", '20 Aug', myusers[1].id, myusers[1].name, myusers[1].photo, myusers[1].FeedText, ''),
  Feed("3", '22 Aug', myusers[2].id, myusers[2].name, myusers[2].photo, myusers[2].FeedText, ''),
  Feed("4", '1 Sept', myusers[3].id, myusers[3].name, myusers[3].photo, myusers[3].FeedText, ''),
];