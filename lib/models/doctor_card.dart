import 'package:flutter/material.dart';

import '../controllers/constants.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;
  final String profTime;

  const DoctorCard({
    Key? key,
    required this.doctorImagePath,
    required this.rating,
    required this.doctorName,
    required this.doctorProfession,
    required this.profTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          margin: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: cardColor,
          ),
          child: Column(
            children: [
              // picture of doctor
              Container(
                //margin: const EdgeInsets.all(7),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    doctorImagePath,
                    height: 150,
                    width: 100,
                  ),
                ),
              ),

              const SizedBox(height: 3),

              // rating out of 5
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: starColor,
                  ),
                  Text(
                    rating,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 3),

              // doctor name
              FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  doctorName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),

              const SizedBox(height: 2),

              // doctor title
              Row(
                children: [
                  Text(doctorProfession),
                  const SizedBox(width: 2),
                  Text(profTime),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
