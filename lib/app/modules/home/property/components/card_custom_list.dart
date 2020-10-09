import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CardCustomList extends StatelessWidget {
  final String type;
  final String addrens;
  final String urlImage;
  final String value;
  final String description;
  final bool isFavorite;

  const CardCustomList(
      {Key key,
      this.type,
      this.addrens,
      this.urlImage,
      this.value,
      this.description,
      this.isFavorite = false})
      : super(key: key); // componente para gerencia de estados do botão faorito

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Modular.to.pushNamed("/home/details");
      },
      child: Card(
        margin: EdgeInsets.all(7),
        elevation: 2,
        shape: RoundedRectangleBorder(
          // side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Text(
                    type,
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5, bottom: 15),
                  child: Text(
                    addrens,
                    style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                ),
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 15, bottom: 0),
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blueGrey[900],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 5, bottom: 15),
                            child: Text(
                              description,
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: Icon(Icons.favorite,
                            color: isFavorite ? Colors.pink : Colors.grey),
                        onPressed: () {},
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
