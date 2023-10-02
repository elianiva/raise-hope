import 'package:flutter/material.dart';

class ChatSearchBar extends StatelessWidget {
  const ChatSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextField(
        style: const TextStyle(color: Colors.black45, fontSize: 14),
        decoration: InputDecoration(
          hintText: 'Search chat...',
          hintStyle: TextStyle(color: Colors.black45.withAlpha(100), fontSize: 14, fontWeight: FontWeight.w400),
          prefixIcon: const Icon(Icons.search, color: Colors.black54),
          filled: true,
          fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(22)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
