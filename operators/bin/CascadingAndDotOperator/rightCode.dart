class User {
  String profilePictureUrl;
  String name;

  User(this.profilePictureUrl, this.name);

  User updateProfilePicture(String newImageUrl) {
    profilePictureUrl = newImageUrl;
    return this;
  }

  User updateName(String newName) {
    name = newName;
    return this;
  }
}

// ... elsewhere in the code ...
void main(List<String> args) {
  User currentUser = User("https://old-profile-pic.jpg", "Old Username");

// User decides to update profile:
  currentUser.updateName("AwesomeNewUserName");
  //Here we are using the cascading operator: ".."
  currentUser.updateProfilePicture("https://shiny-new-profile-pic.jpg")
    ..updateName("AwesomeNewUsername");
  //but we can also achieve this with ".":
  // currentUser
  //     .updateProfilePicture("https://shiny-new-profile-pic.jpg")
  //     .updateName("AwesomeNewUsername");

  print(currentUser.name);
}
