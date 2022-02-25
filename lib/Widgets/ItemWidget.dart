import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sharon_vincy/Widgets/FavButton.dart';

class ItemCard extends StatefulWidget {
  ItemCard(this.price, this.orgPrice, this.img, this.offer, this.onTap, this.idx);

  int price;
  int orgPrice;
  String img;
  int offer;
  final VoidCallback onTap;
  int idx;

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {

  @override
  Widget build(BuildContext context) {
    return
          Stack(
              children: [
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      image: (widget.img != "")
                          ? DecorationImage(
                          image: AssetImage(widget.img),
                          fit: BoxFit.cover,
                          onError: (_, __) {
                            // return AssetImage('assets/images/logo.png');
                          })
                          : const DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                (widget.offer == 0 && widget.idx != 0) ? Positioned(
                bottom: 16,
                left: 8,
                child: Row(
                children: const [
                Icon(Icons.star,
                color: Colors.grey,
                size: 18,
                ),
                ],
                )) :
                Positioned(
                    bottom: 16,
                    left: 8,
                    child: Row(
                      children: const [
                        Icon(Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                      ],
                    )),
                Positioned(
                    bottom: 8,
                    right: 8,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8),
                        child: Text("3 km",
                          style: TextStyle(fontSize: 12, color: Colors.white,),
                        ),
                      ),
                    )),
                Container(
                  alignment: Alignment.topRight,
                  height: 60,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FavouriteButton(),
                    ],
                  ),
                ),
              ],

          );
  }
}
