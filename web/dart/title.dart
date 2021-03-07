import 'dart:async';
import 'dart:html';

import 'dart:math';

final HtmlElement _container = querySelector('#title');
const fonts = [
  'Arvo',
  'Montserrat',
  'Arial',
];

void initializeTitle(String left, String right) {
  _createSide(left, _container.children[0]);
  _createSide(right, _container.children[1]);
}

void _createSide(String s, HtmlElement c) async {
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
