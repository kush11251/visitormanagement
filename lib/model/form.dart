class ContactForm {
  String name;
  String email;
  String mobileNo;
  String address;
  String reason;

  ContactForm(this.name, this.email, this.mobileNo,
      this.address, this.reason);

  factory ContactForm.fromJson(dynamic json) {
    return ContactForm(
        "${json['name']}", "${json['email']}", "${json['mobileNo']}",
        "${json['address']}", "${json['reason']}"
    );
  }

  // Method to make GET parameters.
  Map toJson() => {
    'name': name,
    'email': email,
    'mobileNo': mobileNo,
    'address' : address,
    'reason' : reason
  };
}