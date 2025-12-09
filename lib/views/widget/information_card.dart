import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../model/information_card_model.dart';
import './article_page.dart';

class InformationCard extends StatefulWidget {
  const InformationCard({super.key});

  @override
  State<InformationCard> createState() => _InformationCardState();
}

class _InformationCardState extends State<InformationCard> {
  var informations = <Information>[];

  @override
  void initState() {
    super.initState();
    _loadInformations();
  }

  Future<void> _loadInformations() async {
    final informativoJson = await rootBundle.loadString(
      'assets/json/information.json',
    );
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      var infoMap = json.decode(informativoJson);
      informations = infoMap
          .map<Information>((i) => Information.fromMap(i))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: informations.length,
        itemBuilder: (context, index) {
          var info = informations[index];
          // print('image path: ${info.imagePath}');
          return Container(
            margin: const EdgeInsets.only(bottom: 0.0),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                  image: AssetImage(info.imagePath),
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),

              title: Text(
                info.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1D1B20),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info.description,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF49454F),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "${info.data} · ${info.time}",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF49454F),
                    ),
                  ),
                ],
              ),
              isThreeLine: true,
              dense: true,
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ArticlePage(info: info)),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
