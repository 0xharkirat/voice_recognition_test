const Map<String, String> mapping = {
  'a': 'ੳ',
  'A': 'ਅ',
  's': 'ਸ',
  'S': 'ਸ਼',
  'd': 'ਦ',
  'D': 'ਧ',
  'f': 'ਡ',
  'F': 'ਢ',
  'g': 'ਗ',
  'G': 'ਘ',
  'h': 'ਹ',
  'H': '੍ਹ',
  'j': 'ਜ',
  'J': 'ਝ',
  'k': 'ਕ',
  'K': 'ਖ',
  'l': 'ਲ',
  'L': 'ਲ਼',
  'q': 'ਤ',
  'Q': 'ਥ',
  'w': 'ਾ',
  'W': 'ਾਂ',
  'e': 'ੲ',
  'E': 'ਓ',
  'r': 'ਰ',
  'R': '੍ਰ',
  '®': '੍ਰ',
  't': 'ਟ',
  'T': 'ਠ',
  'y': 'ੇ',
  'Y': 'ੈ',
  'u': 'ੁ',
  'ü': 'ੁ',
  'U': 'ੂ',
  '¨': 'ੂ',
  'i': 'ਿ',
  'I': 'ੀ',
  'o': 'ੋ',
  'O': 'ੌ',
  'p': 'ਪ',
  'P': 'ਫ',
  'z': 'ਜ਼',
  'Z': 'ਗ਼',
  'x': 'ਣ',
  'X': 'ਯ',
  'c': 'ਚ',
  'C': 'ਛ',
  'v': 'ਵ',
  'V': 'ੜ',
  'b': 'ਬ',
  'B': 'ਭ',
  'n': 'ਨ',
  'ƒ': 'ਨੂੰ',
  'N': 'ਂ',
  'ˆ': 'ਂ',
  'm': 'ਮ',
  'M': 'ੰ',
  'µ': 'ੰ',
  '`': 'ੱ',
  '~': 'ੱ',
  '¤': 'ੱ',
  'Í': '੍ਵ',
  'ç': '੍ਚ',
  '†': '੍ਟ',
  'œ': '੍ਤ',
  '˜': '੍ਨ',
  '´': 'ੵ',
  'Ï': 'ੵ',
  'æ': '਼',
  'Î': '੍ਯ',
  'ì': 'ਯ',
  'í': '੍ਯ',
  '1': '੧',
  '2': '੨',
  '3': '੩',
  '4': '੪',
  '5': '੫',
  '6': '੬',
  '^': 'ਖ਼',
  '7': '੭',
  '&': 'ਫ਼',
  '8': '੮',
  '9': '੯',
  '0': '੦',
  '\\': 'ਞ',
  '|': 'ਙ',
  '[': '।',
  ']': '॥',
  '<': 'ੴ',
  '¡': 'ੴ',
  'Å': 'ੴ',
  'Ú': 'ਃ',
  'Ç': '☬',
  '@': 'ੑ',
  '‚': '❁',
  '•': '੶',
  ' ': ' ',
};

const Map<String, String> reverseMapping = {
  'ਇ': 'ie',
  'ਉ': 'au',
  'ਊ': 'aU',
  'ਆ': 'Aw',
  'ਆਂ': 'AW',
  'ਐ': 'AY',
  'ਔ': 'AO',
  'ਈ': 'eI',
  'ਏ': 'ey',
  'ੋੁ': 'uo',
  '੍ਵ': 'Í',
  '੍ਚ': 'ç',
  '੍ਟ': '†',
  '੍ਤ': 'œ',
  '੍ਨ': '˜',
  'ੵ': '´',
  '਼': 'æ',
  '੍ਯ': 'Î',
  'ਨੂੰ': 'ƒ',
  '੍ਹ': 'H',
  '੍ਰ': 'R',
  '': '₁₅',
  '੦': '0',
  '੧': '1',
  '੨': '2',
  '੩': '3',
  '੪': '4',
  '੫': '5',
  '੬': '6',
  '੭': '7',
  '੮': '8',
  '੯': '9',
  'ੳ': 'a',
  'ਅ': 'A',
  'ਸ': 's',
  'ਸ਼': 'S',
  'ਦ': 'd',
  'ਧ': 'D',
  'ਡ': 'f',
  'ਢ': 'F',
  'ਗ': 'g',
  'ਘ': 'G',
  'ਹ': 'h',
  'ਜ': 'j',
  'ਝ': 'J',
  'ਕ': 'k',
  'ਖ': 'K',
  'ਲ': 'l',
  'ਲ਼': 'L',
  'ਤ': 'q',
  'ਥ': 'Q',
  'ਾ': 'w',
  'ਾਂ': 'W',
  'ੲ': 'e',
  'ਓ': 'E',
  'ਰ': 'r',
  'ਟ': 't',
  'ਠ': 'T',
  'ੇ': 'y',
  'ੈ': 'Y',
  'ੁ': 'u',
  'ੂ': 'U',
  'ਿ': 'i',
  'ੀ': 'I',
  'ੋ': 'o',
  'ੌ': 'O',
  'ਪ': 'p',
  'ਫ': 'P',
  'ਜ਼': 'z',
  'ਗ਼': 'Z',
  'ਣ': 'x',
  'ਯ': 'X',
  'ਚ': 'c',
  'ਛ': 'C',
  'ਵ': 'v',
  'ੜ': 'V',
  'ਬ': 'b',
  'ਭ': 'B',
  'ਨ': 'n',
  'ਂ': 'N',
  'ਮ': 'm',
  'ੰ': 'M',
  'ੱ': '`',
  'ਖ਼': '^',
  'ਫ਼': '&',
  'ਞ': '\\',
  'ਙ': '|',
  '।': '[',
  '॥': ']',
  'ੴ': '<>',
  'ਃ': 'Ú',
  '☬': 'Ç',
  'ੑ': '@',
  '❁': '‚',
  '੶': '•',
  '': '₁',
  '': '₂',
  '': '₃',
  '': '₄',
  '': '₅',
  '': '₆',
  '': '₈',
  ' ': ' ',
  '': '₁',
  '': '₂',
  '': '₃',
  '': '₄',
  '': '₆',
};

const List<String> asciiCorrections = [
  '@W',
  '@w',
  '@o',
  '@O',
  '@y',
  '@Y',
  '@ü',
  '@`',
  'ÍY',
  'Ry',
  'RY',
  'RM',
  'RN',
  'YN',
  'yN',
  'YM',
  'yM',
  'uN',
  'UN',
  'üN',
  'uM',
  'UM',
  'üM',
  'R`',
  'u`',
  'U`',
  'ü`',
  'Iˆ',
  'IN',
];

const List<String> halfChars = [
  'H',
  'R',
  '®',
  'Í',
  'ç',
  '†',
  'œ',
  '˜',
  '´',
  'Î',
  'Ï',
  'í',
  'æ',
];

const List<String> aboveChars = [
  'ੇ',
  'ੈ',
  'ੋ',
  'ੌ',
];

const List<List<String>> simplifications = [
  ['E', 'a'],
  ['ਓ', 'ੳ'],
  ['L', 'l'],
  ['ਲ਼', 'ਲ'],
  ['S', 's'],
  ['ਸ਼', 'ਸ'],
  ['z', 'j'],
  ['ਜ਼', 'ਜ'],
  ['Z', 'g'],
  ['ਗ਼', 'ਗ'],
  ['\\^', 'K'],
  ['ਖ਼', 'ਖ'],
  ['ƒ', 'n'],
  ['ਨੂੰ', 'ਨ'],
  ['&', 'P'],
  ['ਫ਼', 'ਫ'],
];

class Convert {
  
  static String ascii({String text = '', bool simplify = false}) {
    List<String> convertedText = [];
    List<String> chars = text.split('');

    for (int j = 0; j < chars.length; j += 1) {
      String currentChar = chars[j];
      String? nextChar = (j + 1 < chars.length) ? chars[j + 1] : null;
      String? nextNextChar = (j + 2 < chars.length) ? chars[j + 2] : null;

      if (currentChar == 'ਿ') {
        String? lastElement =
            convertedText.isNotEmpty ? convertedText.removeLast() : null;
        if (lastElement != null) {
          convertedText.add('i');
          convertedText.add(lastElement);
        }
      } else if (currentChar == '੍') {
        if (nextNextChar == 'ਿ') {
          String? lastElement =
              convertedText.isNotEmpty ? convertedText.removeLast() : null;
          if (lastElement != null) {
            convertedText.add('i');
            convertedText.add(lastElement);
            j += 1;
          }
        }
        String? convertedChar = reverseMapping[currentChar + nextChar!];
        if (convertedChar != null) {
          convertedText.add(convertedChar);
          if (nextNextChar == 'ੁ') {
            convertedText.add('ü');
            j += 1;
          } else if (nextNextChar == 'ੂ') {
            convertedText.add('¨');
            j += 1;
          }
        }
        j += 1;
      } else if (currentChar == 'ੑ') {
        String convertedChar = reverseMapping[currentChar] ?? currentChar;
        convertedText.add(convertedChar);
        if (nextChar == 'ੁ') {
          convertedText.add('ü');
          j += 1;
        } else if (nextChar == 'ੂ') {
          convertedText.add('¨');
          j += 1;
        }
      } else if (currentChar == 'ਨ' && nextChar == 'ੂ' && nextNextChar == 'ੰ') {
        convertedText.add('ƒ');
        j += 2;
      } else if (currentChar == 'ੋ' && nextChar == 'ੁ') {
        String? convertedChar = reverseMapping[currentChar + nextChar!];
        if (convertedChar != null) {
          convertedText.add(convertedChar);
          j += 1;
        }
      } else if (currentChar == 'ੱ' &&
          nextNextChar != null &&
          reverseMapping.containsKey(nextNextChar)) {
        convertedText.add('¤');
      } else if (currentChar == 'ਾ' && nextChar == 'ਂ') {
        convertedText.add('W');
        j += 1;
      } else if (currentChar == 'ਆ' && nextChar == 'ਂ') {
        convertedText.add('AW');
        j += 1;
      } else if (currentChar == 'ਈ' && nextChar == '') {
        convertedText.add('eˆØI');
        j += 1;
      } else if (currentChar == 'ਈ' && nextChar == '') {
        convertedText.add('eµØI');
        j += 1;
      } else if ((currentChar == 'ਂ' && nextChar == 'ੀ') ||
          (currentChar == 'ੀ' && nextChar == '')) {
        convertedText.add('ˆØI');
        j += 1;
      } else if ((currentChar == 'ੰ' && nextChar == 'ੀ') ||
          (currentChar == 'ੀ' && nextChar == '')) {
        convertedText.add('µØI');
        j += 1;
      } else if (simplify && nextChar == '਼') {
        switch (currentChar) {
          case 'ਸ':
            convertedText.add('S');
            j += 1;
            break;
          case 'ਜ':
            convertedText.add('z');
            j += 1;
            break;
          case 'ਖ':
            convertedText.add('^');
            j += 1;
            break;
          case 'ਗ':
            convertedText.add('Z');
            j += 1;
            break;
          case 'ਫ':
            convertedText.add('&');
            j += 1;
            break;
          case 'ਲ':
            convertedText.add('L');
            j += 1;
            break;
          default:
            String? convertedChar = reverseMapping[currentChar];
            if (convertedChar != null) {
              convertedText.add(convertedChar);
            }
        }
      } else {
        String convertedChar = reverseMapping[currentChar] ?? currentChar;
        convertedText.add(convertedChar);
      }
    }

    return convertedText.join('');
  }

  static String unicode(
      {String text = '', bool reverse = false, bool simplify = false}) {
    if (text == '') {
      return text;
    }

    if (reverse) {
      return ascii(text: text, simplify: simplify);
    }

    String convertedText = '';
    String str =
        text.replaceAll('>', '').replaceAll('Ø', '').replaceAll('Æ', '');

    for (String e in asciiCorrections) {
      str = str.replaceAllMapped(
          RegExp(e.split('').reversed.join(''), caseSensitive: false), (match) {
        return e;
      });
    }

    List<String> chars = str.split('');

    for (int j = 0; j < chars.length; j += 1) {
      String currentChar = chars[j];
      String? nextChar = (j + 1 < chars.length) ? chars[j + 1] : null;
      String? nextNextChar = (j + 2 < chars.length) ? chars[j + 2] : null;

      if (currentChar == 'i') {
        if (nextChar != null) {
          if (nextChar == 'e') {
            convertedText += 'ਇ';
          } else if (halfChars.contains(nextNextChar)) {
            convertedText += mapping[nextChar] ?? nextChar;
            convertedText += (mapping[nextNextChar] ?? nextNextChar)!;
            convertedText += 'ਿ';
            j += 1;
          } else {
            convertedText += mapping[nextChar] ?? nextChar;
            convertedText += 'ਿ';
          }
          j += 1;
        } else {
          convertedText += mapping[currentChar] ?? currentChar;
        }
      } else if (currentChar == 'a') {
        switch (nextChar) {
          case 'u':
            convertedText += 'ਉ';
            j += 1;
            break;
          case 'U':
            convertedText += 'ਊ';
            j += 1;
            break;
          default:
            convertedText += mapping[currentChar] ?? currentChar;
        }
      } else if (currentChar == 'A') {
        switch (nextChar) {
          case 'w':
            convertedText += 'ਆ';
            j += 1;
            break;
          case 'W':
            convertedText += 'ਆਂ';
            j += 1;
            break;
          case 'Y':
            convertedText += 'ਐ';
            j += 1;
            break;
          case 'O':
            convertedText += 'ਔ';
            j += 1;
            break;
          default:
            convertedText += mapping[currentChar] ?? currentChar;
        }
      } else if (currentChar == 'e') {
        switch (nextChar) {
          case 'I':
            convertedText += 'ਈ';
            j += 1;
            break;
          case 'y':
            convertedText += 'ਏ';
            j += 1;
            break;
          default:
            convertedText += mapping[currentChar] ?? currentChar;
        }
      } else if (currentChar == '1' && nextChar == 'E' && nextNextChar == 'å') {
        convertedText += 'ੴ';
        j += 2;
      } else if (currentChar == 'u' && nextChar == 'o') {
        convertedText += 'ੋੁ';
        j += 1;
      } else if (simplify && nextChar == 'æ') {
        switch (currentChar) {
          case 's':
            convertedText += 'ਸ਼';
            j += 1;
            break;
          case 'j':
            convertedText += 'ਜ਼';
            j += 1;
            break;
          case 'K':
            convertedText += 'ਖ਼';
            j += 1;
            break;
          case 'g':
            convertedText += 'ਗ਼';
            j += 1;
            break;
          case 'P':
            convertedText += 'ਫ਼';
            j += 1;
            break;
          case 'l':
            convertedText += 'ਲ਼';
            j += 1;
            break;
          default:
            convertedText += mapping[currentChar] ?? currentChar;
        }
      } else {
        convertedText += mapping[currentChar] ?? currentChar;
      }
    }

    return convertedText;
  }

  static String firstLetters(
      {String words = '', bool eng = false, bool simplify = false}) {
    if (words == '') {
      return words;
    }

    String newWords = words;

    if (simplify) {
      for (List<String> e in simplifications) {
        newWords =
            newWords.replaceAll(RegExp(e[0], caseSensitive: false), e[1]);
      }
    }

    newWords = newWords
        .replaceAll(']', '')
        .replaceAll('[', '')
        .replaceAll('॥', '')
        .replaceAll('।', '')
        .replaceAll('rhwau dUjw', '')
        .replaceAll('rhwau', '')
        .replaceAll(RegExp(r'[0-9]'), '')
        .replaceAll(RegExp(r'[;,.]'), '');

    String firstLetter(String word) {
      if (word.isNotEmpty) {
        if (word[0] == 'i' && !eng) {
          return word[1];
        }
        return word[0];
      }
      return '';
    }

    List<String> letters = newWords.split(' ').map(firstLetter).toList();
    String result = letters.join('');
    return !eng ? result : result.replaceAll('|', '');
  }
}
