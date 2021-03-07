import 'dart:async';
import 'dart:html';

import 'dart:math';

final HtmlElement _container = querySelector('#title');

void initializeTitle(String left, String right) {
  var shared = [
    "'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif",
    'Montserrat',
  ];
  _createSide(left, _container.children[0], 0, [
    'Arvo',
    ...shared,
  ]);
  _createSide(right, _container.children[1], 1, [
    ...shared,
    'Arial',
    'Montserrat',
  ]);
}

void _createSide(String s, HtmlElement c, int off, List<String> fonts) async {
  var repeat = 2;
  for (var i = 0; i < repeat; i++) {
    for (var font in fonts) {
      c.append(HeadingElement.h1()
        ..text = s
        ..style.fontFamily = font);
    }
  }

  var rnd = Random();
  var i = 1 - off + rnd.nextInt(repeat * fonts.length - 1);
  c.style.top = 'calc(-$i * var(--height))';

  await Future.delayed(Duration(milliseconds: 1000 + rnd.nextInt(1000)));
  c.style.top = 'calc(${-off * (repeat * fonts.length - 1)} * var(--height))';
}
