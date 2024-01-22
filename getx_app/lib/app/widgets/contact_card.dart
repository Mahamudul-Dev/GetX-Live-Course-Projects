import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
    required this.name,
    required this.email,
    required this.address,
    required this.city,
    required this.country,
  }) : super(key: key);

  final String name;
  final String email;
  final String address;
  final String city;
  final String country;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            CircleAvatar(),

            const SizedBox(width: 26,),

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: $name', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                  Text('Email: $email', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),overflow: TextOverflow.ellipsis,),
                  Text('Address: $address', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                  Text('City: $city', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                  Text('Country: $country', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
