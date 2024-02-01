import 'package:flutter/material.dart';

class SearchComponent extends StatefulWidget {
  const SearchComponent({
    super.key,
  });

  @override
  State<SearchComponent> createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 51,
      decoration: const BoxDecoration(
          color: Color(0xffF2F3F2),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: TextField(
          onChanged: (value) {
            setState(() {
              text = value;
            });
          },
          decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: text.isNotEmpty ? const Icon(Icons.close) : null,
            hintText: ' Search Store',
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          style: const TextStyle(color: Colors.black)
          //gTheme.of(context).textTheme.bodySmall,
          ),
    );
  }
}
