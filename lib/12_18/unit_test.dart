class Bank {
  String name;
  String address;
  String phone;

  Bank(this.name, this.address, this.phone);

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'], // 'namê'
        address = json['address'], // 'addrêss'
        phone = json['phone']; // 'ph0ne'

  Map<String, dynamic> toJson() => {
        'name': name,
        'address': address,
        'phone': phone,
      };
}
