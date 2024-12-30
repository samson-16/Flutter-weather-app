import 'package:flutter/material.dart';

import '/constants/app_colors.dart';

class RoundTextField extends StatelessWidget {
  const RoundTextField({
    super.key,
    this.controller,
  });

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: AppColors.accentBlue,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        style: const TextStyle(
          color: AppColors.white,
        ),
        controller: controller,
        decoration: const InputDecoration(
          fillColor: Colors.white,
          focusColor: Colors.white,
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.grey,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class LocationPicker extends StatelessWidget {
  const LocationPicker({
    super.key,
    required this.onLocationPicked,
  });

  final Function(String) onLocationPicked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // Logic to pick location
        String pickedLocation = await _pickLocation(context);
        onLocationPicked(pickedLocation);
      },
      child: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          color: AppColors.accentBlue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.location_on_outlined,
          color: AppColors.grey,
        ),
      ),
    );
  }

  Future<String> _pickLocation(BuildContext context) async {
    // Implement your location picking logic here
    // For now, we return a dummy location
    await Future.delayed(const Duration(seconds: 1));
    return 'Dummy Location';
  }
}
