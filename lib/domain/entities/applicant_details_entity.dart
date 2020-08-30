class ApplicantDetailsEntity {
  String name;
  String dob;
  List<String> phoneNumer;
  String maritalStatus;
  int numberOfDependents;

  ApplicantDetailsEntity({
    this.name,
    this.dob,
    this.phoneNumer,
    this.maritalStatus,
    this.numberOfDependents,
  });
}
