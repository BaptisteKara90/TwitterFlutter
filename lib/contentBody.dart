import 'package:flutter/material.dart';

class Tweet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/herisson.jpg", width: 180),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("JPP@BLC"),
                          Text(
                            "20min",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Hérisson est un nom vernaculaire qui désigne, en français, divers petits mammifères insectivores disposant de poils agglomérés, durs, hérissés et piquants. Ce nom dérive du latin ericius. Les espèces les plus connues des francophones sont le Hérisson commun et le Hérisson d'Europe orientale mais il existe d'autres « hérissons » sur divers continents, y compris en Asie un genre apparenté mais dont les représentants sont dépourvus de piquants : les gymnures.",
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TweetMenu(),
          )
        ],
      ),
    );
  }
}

class TweetMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.reply, color: Colors.grey)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.autorenew, color: Colors.grey)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.star, color: Colors.grey)),
          ]),
    );
  }
}