import 'package:voice_recognition_test/helpers/banidb.dart';

class Search {
  static void voiceSearch(String text) async {
    Map<String, dynamic> shabad = await BaniDB.search(text, searchType: 1);

    print('Total Results: ${shabad['total_results']}');
    print('Total Pages: ${shabad['total_pages']}');

    for (int i = 1; i <= shabad['total_pages']; i++) {
      String pageKey = 'page_$i';
      List<Map<String, dynamic>> pageData = shabad['pages_data'][pageKey];

      print('$pageKey: ${pageData.length}');

      for (int j = 0; j < pageData.length; j++) {
        String verse = pageData[j]['verse'];
        int shabadId = pageData[j]['shabad_id'];
        int verseId = pageData[j]['verse_id'];

        print(
            'result ${j + 1} | $verse | url: http://sttm.co/s/$shabadId/$verseId');
      }

      print('\n');
    }
  }
}
