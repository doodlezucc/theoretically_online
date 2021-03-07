import 'dart:async';
import 'dart:html';

import 'dart:math';

final HtmlElement _container = querySelector('#title');

void initializeTitle(String left, String right) {
  var shared = [
    "'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif",
    'Montserrat',
  ];
  _createSide(left, _container.children[0], [
    'Arvo',
    ...shared,
  ]);
  _createSide(right, _container.children[1], [
    'Arial',
    ...shared,
  ]);
}

void _createSide(String s, HtmlElement c, List<String> fonts) async {
  var rnd = Random();
  for (var font in fonts..shuffle(rnd)) {
    c.append(HeadingElement.h1()
      ..text = s
      ..style.fontFamily = font);
  }

  while (true) {
    var i = rnd.nextInt(fonts.length);
    c.style.top = '${i * -80}px';
    await Future.delayed(Duration(milliseconds: 1000 + rnd.nextInt(3000)));
  }
}
