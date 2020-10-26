import 'package:cached_network_image/cached_network_image.dart';
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
  final Function onTap;

  const CardCustomList(
      {Key key,
      this.type,
      this.addrens,
      this.urlImage,
      this.value,
      this.description,
      this.isFavorite = false,
      this.isFavoriteVisible = false, this.onTap})
      : super(key: key); // componente para gerencia de estados do botão faorito

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: urlImage == null
                      ? "https://cdn.alldecorboutique.com.br/wp-content/uploads/2018/08/233110.jpg"
                      : urlImage,
                  placeholder: (context, url) => Container(
                      child: Center(child: CircularProgressIndicator())),
                  errorWidget: (context, url, error) =>
                      Container(child: Center(child: Icon(Icons.error))),
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
              SizedBox(
                height: 15,
              ),
              Divider()
            ],
          ),
        ),
      ),
    );
  }
}
