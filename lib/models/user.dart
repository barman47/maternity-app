class User {
  String id;
  String name;
  String phone;
  String date;
  String service;
  String specialist;
  String reason;

  User(
      {this.id,
      this.name,
      this.phone,
      this.date,
      this.service,
      this.specialist,
      this.reason});

  String getId() {
    return this.id;
  }

  void setId(String id) {
    this.id = id;
  }

  String getName() {
    return this.name;
  }

  void setName(String name) {
    this.name = name;
  }

  String getPhone() {
    return this.phone;
  }

  void setPhone(String phone) {
    this.phone = phone;
  }

  String getDate() {
    return this.date;
  }

  void setDate(String date) {
    this.date = date;
  }

  String getService() {
    return this.service;
  }

  void setService(String service) {
    this.service = service;
  }

  String getSpecialist() {
    return this.service;
  }

  void setSpecialist(String specialist) {
    this.specialist = specialist;
  }

  String getReason() {
    return this.reason;
  }

  void setReason(String reason) {
    this.reason = reason;
  }
}
