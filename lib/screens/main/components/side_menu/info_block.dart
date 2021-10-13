import "package:flutter/material.dart";

class InfoBlock extends StatelessWidget {
  const InfoBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: Container(
        color: const Color(0xFF262732),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(
              flex: 2,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/owl.jpg'),
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              'Hello Owlrd',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
            ),
            const Text(
              'Web and Mobile development \n examples & tutorials',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
