/*

This code will give wrong output because
Cascade Operator vs. Dot Operator:

The cascade operator (..) is designed to chain multiple method calls on the same object.
When you use the dot operator (.), each method call is executed and its return value becomes 
the object for the following method call.
The Error: Because updateProfilePicture returns null, when you try to chain .updateName("AwesomeNewUsername") onto 
it, you're essentially trying to call updateName on a null object, causing the error.


Please Find the solution "on your own" in the rightCode.dart.

*/

class User {
  String profilePictureUrl;
  String name;

  User(this.profilePictureUrl, this.name);

  updateProfilePicture(String newImageUrl) {
    profilePictureUrl = newImageUrl;
  }

  updateName(String newName) {
    name = newName;
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
  currentUser
      .updateProfilePicture("https://shiny-new-profile-pic.jpg")
      .updateName("AwesomeNewUsername");

  print(currentUser.name);
}
