import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class NewsListScreen extends StatelessWidget {
  const NewsListScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            GFCard(
              boxFit: BoxFit.cover,
              titlePosition: GFPosition.start,
              image: Image.network(
                'https://th.bing.com/th?id=OIF.B3E5r8frTPb38on8%2fHcuUA&pid=ImgDet&rs=1',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              showImage: true,
              title: const GFListTile(
                titleText: 'Kasus pembunuhan Brigadir Joshua',
              ),
              content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                    onPressed: () =>
                        {Navigator.pushNamed(context, 'newsDetail')},
                    icon: const Icon(Icons.search, size: 17),
                    label: const Text('Detail')),
              ),
            ),
          ],
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            GFCard(
              boxFit: BoxFit.cover,
              titlePosition: GFPosition.start,
              image: Image.network(
                'https://th.bing.com/th?id=OIF.B3E5r8frTPb38on8%2fHcuUA&pid=ImgDet&rs=1',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              showImage: true,
              title: const GFListTile(
                titleText: 'Kasus pembunuhan Brigadir Joshua',
              ),
              content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                    onPressed: () =>
                        {Navigator.pushNamed(context, 'newsDetail')},
                    icon: const Icon(Icons.search, size: 17),
                    label: const Text('Detail')),
              ),
            ),
          ],
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            GFCard(
              boxFit: BoxFit.cover,
              titlePosition: GFPosition.start,
              image: Image.network(
                'https://th.bing.com/th?id=OIF.B3E5r8frTPb38on8%2fHcuUA&pid=ImgDet&rs=1',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              showImage: true,
              title: const GFListTile(
                titleText: 'Kasus pembunuhan Brigadir Joshua',
              ),
              content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                    onPressed: () =>
                        {Navigator.pushNamed(context, 'newsDetail')},
                    icon: const Icon(Icons.search, size: 17),
                    label: const Text('Detail')),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
