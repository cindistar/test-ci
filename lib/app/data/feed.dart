import 'package:layout_adapt/app/data/post.dart';
import 'package:faker/faker.dart';

class Feed {
  static List<Post> posts = List.generate(
    faker.randomGenerator.integer(10),
    (index) => Post(
      uid: faker.guid.guid(),
      description: faker.lorem.sentence(),
      photoUrl: faker.image.image(random: true),
      time: faker.date.dateTime(minYear: 2023),
    ),
  );
}