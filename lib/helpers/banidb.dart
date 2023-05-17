import 'package:http/http.dart' as http;
import 'dart:convert';

const  String _baseUrl = 'https://api.banidb.com/v2';

class BaniDB {
  
  static Map<int, String> searchType() {
    return {
      0: 'First letter each word from start (Gurmukhi)',
      1: 'First letter each word anywhere (Gurmukhi)',
      2: 'Full Word (Gurmukhi)',
      3: 'Full Word Translation (English)',
      4: 'Romanized Gurmukhi (English)',
      5: 'Ang',
      6: 'Main Letter (Gurmukhi)',
      7: 'Romanized first letter anywhere (English)'
    };
  }

  static Future<Map<String, dynamic>?> search(String query,
      {int searchType = 1,
      String source = 'all',
      bool larivaar = false,
      int? ang,
      String? raag,
      String writer = 'all',
      int page = 1,
      int? results}) async {
    if (query.length > 2) {
      String url = '$_baseUrl/search/$query?';
      Map<String, dynamic> urlAddress = {
        'searchtype': searchType,
        'source': source,
        'ang': ang,
        'raag': raag,
        'writer': writer,
        'page': page,
        'results': results
      };
      urlAddress.forEach((key, value) {
        if (value != null) {
          url += '$key=$value&';
        }
      });
      http.Response response = await http.get(Uri.parse(url));
      Map<String, dynamic> jsonBlob = json.decode(response.body);
      Map<String, dynamic> info = jsonBlob['resultsInfo'];
      int totalRes = info['totalResults'];
      Map<String, dynamic> searchResults = {'total_results': totalRes};
      int currentPage = info['pages']['page'];
      int totalPages = info['pages']['totalPages'];
      searchResults['total_pages'] = totalPages;
      Map<String, List<Map<String, dynamic>>> pages = {};
      for (int page = currentPage; page <= totalPages; page++) {
        response = await http.get(Uri.parse(url));
        jsonBlob = json.decode(response.body);
        info = jsonBlob['resultsInfo'];
        String pg = 'page_$page';
        List<Map<String, dynamic>> verses = [];
        for (Map<String, dynamic> verse in jsonBlob['verses']) {
          Map<String, dynamic> verseDict = {
            'shabad_id': verse['shabadId'],
            'verse_id': verse['verseId'],
          };
          if (larivaar == true) {
            verseDict['lari'] = verse['larivaar']['unicode'];
          } else {
            verseDict['verse'] = verse['verse']['unicode'];
          }
          verseDict['steek'] = {
            'en': verse['translation']['en']['bdb'],
            'pu': verse['translation']['pu']['bdb']['unicode'],
          };
          verseDict['source'] = {
            'pu': verse['source']['unicode'],
            'en': verse['source']['english'],
            'ang': verse['pageNo'],
            'raagpu': verse['raag']['unicode'],
            'raagen': verse['raag']['english'],
            'writer': verse['writer']['english'],
            'verseId': verse['verseId'],
          };
          verses.add(verseDict);
        }
        pages[pg] = verses;
        if (info['pages'].containsKey('nextPage')) {
          url = info['pages']['nextPage'];
        }
      }
      searchResults['pages_data'] = pages;
      return searchResults;
    } else {
      return null;
    }
  }
}
