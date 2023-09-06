import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      ClipRRect
      (
        borderRadius: BorderRadius.circular(6),
        child: Image.asset('assets/1266579.jpg')),
      const SizedBox(
        height: 12,
      ),
    const  Text('jfuhdfh hjdfhhsdfh ifsdfk dihsdfh kjksjfkvbh khjksdfjkjh kkjhdf jhfhyrb iyvhi jdhjshu ykhkhjkh fnfnjf  fjfhj ',
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.bold
        ),
      ),
    const Text('jfuhdfh hjdfhhsdfh ifsdfk dihsdfh kjksjfkvbh khjksdfjkjh kkjhdf jhfhyrb iyvhi jdhjshu ykhkhjkh fnfnjf  fjfhj ',
    maxLines: 2,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 16
        ),
      ),
      ],
    );
  }
}