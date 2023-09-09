import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.mainTxt,
    required this.hintTxt, required this.myController,
  });
  final String mainTxt;
  final String hintTxt;
  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            mainTxt,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 12,
          ),
          TextFormField(
            controller: myController,
            decoration: InputDecoration(
                hintText: hintTxt,
                hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                filled: true,
                fillColor: Colors.grey[250],
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 67, 67, 67))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey))),
          ),
        ],
      ),
    );
  }
}
