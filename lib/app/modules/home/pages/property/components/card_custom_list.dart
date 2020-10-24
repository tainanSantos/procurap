import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CardCustomList extends StatelessWidget {
  final String type;
  final String addrens;
  final String urlImage;
  final String value;
  final String description;
  final bool isFavorite;
  final bool isFavoriteVisible;

  const CardCustomList(
      {Key key,
      this.type,
      this.addrens,
      this.urlImage,
      this.value,
      this.description,
      this.isFavorite = false,
      this.isFavoriteVisible = false})
      : super(key: key); // componente para gerencia de estados do botão faorito

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Modular.to.pushNamed("/home/details");
      },
      child: Container(
          width: MediaQuery.of(context).size.width,
          // color: Colors.white,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Text(
                    type,
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5, bottom: 15),
                  child: Text(
                    addrens,
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                ),
                Container(
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    urlImage ??
                        "https://lrvimoveis.com.br/wp-content/uploads/2015/11/perspectiva-da-varanda-gourmet-do-graca-lummini-570x314.jpg",
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
                                  color: Colors.grey[900],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 5, bottom: 15),
                            child: Text(
                              description,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // (!isFavoriteVisible)
                    //     ? Container(
                    //         padding: const EdgeInsets.all(8.0),
                    //         child: IconButton(
                    //           icon: Icon(Icons.favorite,
                    //               color:
                    //                   isFavorite ? Colors.pink : Colors.grey),
                    //           onPressed: () {},
                    //         ),
                    //       )
                    //     : Container()
                  ],
                ),
                SizedBox(height: 15,),
                Divider()
                
              ],
            ),
          ),
        ),
      
    );
  }
}
