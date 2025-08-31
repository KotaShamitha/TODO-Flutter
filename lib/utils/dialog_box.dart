import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {

  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple[400],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: "Add New Task"
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: onCancel, child: Text("Cancel", style: TextStyle(color: Colors.white),)),
              const SizedBox(width: 8,),
              TextButton(onPressed: onSave, child: Text("Add", style: TextStyle(color: Colors.white),)),
            ],
          )
        ],
      ),
    ),
    );
  }
}