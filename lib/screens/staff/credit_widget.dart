import 'package:app04/models/low_data_item.dart';
import 'package:app04/screens/info/info_screen.dart';
import 'package:flutter/material.dart';
import '../../models/properties_model.dart';
import '../../utilities/cache_image.dart';
import '../../utilities/consts.dart';

class StaffCreditWidget extends StatelessWidget {
  final StaffCredits _credit;
  const StaffCreditWidget(this._credit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InfoScreen(args: {'id': _credit.movieID, 'url': _credit.moviePoster ?? ''}),
        ),
      ),
      child: Card(
        color: color5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              height: 140,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FittedBox(
                  child: CacheImage(_credit.moviePoster ?? ''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(_credit.movieName ?? '', overflow: TextOverflow.ellipsis, textAlign: TextAlign.start, style: const TextStyle(fontSize: 17),),
                  const SizedBox(height: 25),
                  Text('Character Role : ${_credit.characterRole}', textAlign: TextAlign.left, style: const TextStyle(fontSize: 15)),
                  const SizedBox(height: 10),
                  Text('Character Name : ${_credit.characterName}', textAlign: TextAlign.left, style: const TextStyle(fontSize: 15)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
