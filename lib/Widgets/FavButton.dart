import 'package:flutter/material.dart';

class FavouriteButton extends StatefulWidget {
  @override
  _FavouriteButtonState createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          // armMem.listFavour.remove(this.widget.itemID);
        });
      },
      icon: Icon( Icons.favorite_border_outlined,
        color: Colors.brown.shade300,
        size: 24,
      ),
    );
  }

}
