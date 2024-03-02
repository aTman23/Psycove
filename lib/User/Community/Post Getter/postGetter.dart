class Post {
  late String userName;
  late String userHandle;
  late String userImage;
  late String userPost;
  late String userPostImage;
  late bool likeStatus;

  Post(this.userName, this.userHandle, this.userImage, this.userPost,
      this.userPostImage, this.likeStatus);
}

class PostGetter {
  late List<Post> posts;

  PostGetter() {
    posts = [
      Post(
        "Niranjan ingle",
        "@niranjan23",
        "assets/images/user1.png",
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less normal distribution.",
        "",
        true,
      ),
      Post(
        "sarthak kumar",
        "@sartak23",
        "assets/images/user2.png",
        "The point of using Lorem Ipsum is that it has a more-or-less normal distribution.",
        "assets/images/userPost2.png",
        false,
      ),
      Post(
        "Niranjan ingle",
        "@niranjan23",
        "assets/images/user3.png",
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less normal distribution.",
        "",
        true,
      ),
    ];
  }
  List<Post> postData() {
    return this.posts;
  }
}
