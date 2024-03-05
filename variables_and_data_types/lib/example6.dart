void main(List<String> args) {
  /// check analysis_options.yaml, line number: 20 , as we have added a rule that we will have
  /// to specify the Datatype.
  ///According to it:
  ///Warning Code:
  ///final luck = "Looks";
  ///Correct Code:
  final String lucks = "Looks";
  print(lucks);
}
