import 'package:flutter/material.dart';

class OwnMessageCard extends StatelessWidget {
  final String message , date ;
  const OwnMessageCard(this.message , this.date);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 150,
            maxWidth: MediaQuery.of(context).size.width -50,
          ),
        child: Card(
          margin: EdgeInsets.symmetric(
            horizontal: 15 ,
            vertical: 5
          ),
          color: Color(0xffdcfac6),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 80,
                  top: 10,
                  bottom: 22
                ),
                child: Text(
                    message,
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        date,
                        style: TextStyle(
                          fontSize: 12 ,
                          color: Colors.grey.shade600
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Icon(
                          Icons.done_all,
                          size: 18,

                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
