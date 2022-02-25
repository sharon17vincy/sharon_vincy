import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleCard extends StatefulWidget {
  TitleCard(this.price, this.orgPrice, this.img, this.offer, this.onTap);

  int price;
  int orgPrice;
  String img;
  int offer;
  final VoidCallback onTap;

  @override
  _TitleCardState createState() => _TitleCardState();
}

class _TitleCardState extends State<TitleCard> {

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: widget.onTap,
      child: Material(
        child: SizedBox(
          height: 250,
          child: Stack(
            children: [
              ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment(0.0, 0.0),
                    end: Alignment(0.0, 1.5),
                    colors: [Colors.transparent, Colors.white],
                  ).createShader(rect);
                },
                blendMode: BlendMode.srcATop,
                child: Card(
                  child: Container(
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 16, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "AED " + widget.price.toString() + "/-",
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              'AED ' + widget.orgPrice.toString() + " /-",
                              style: const TextStyle(fontSize: 18, color: Colors.grey, decoration: TextDecoration.lineThrough, fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(width: 4,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepOrangeAccent,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text(widget.offer.toString() + "% off",
                                  style: const TextStyle(fontSize: 18, color: Colors.white, ),
                                ),
                              ),
                            )
                          ],
                        )

                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
