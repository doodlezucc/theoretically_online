import 'dart:async';
import 'dart:html';

import 'dart:math';

final HtmlElement _container = querySelector('#title');

void initializeTitle(String left, String right) {
  _createSide(left, _container.children[0], [
    'Arvo',
    'Montserrat',
  ]);
  _createSide(right, _container.children[1], [
    'Montserrat',
    'Arial',
  ]);
}

void _createSide(String s, HtmlElement c, List<String> fonts) async {
  for (var font in fonts) {
    c.append(HeadingElement.h1()
      ..text = s
      ..style.fontFamily = font);
  }

  var rnd = Random();
  while (true) {
    var i = rnd.nextInt(fonts.length);
    c.style.top = '${i * -80}px';
    await Future.delayed(Duration(milliseconds: 1000 + rnd.nextInt(3000)));
  }
}
