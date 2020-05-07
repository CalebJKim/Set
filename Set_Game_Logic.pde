boolean between(int i, int min, int max) {
    return (i >= min && i <= max);
}

String getColor(Card card) {
  if (between (card.getCol(), 1, 3)) {
    return "green";
  } else {
    if (between (card.getCol(), 4, 6)) {
      return "purple";
    } else {
      return "red";
    }
  }
}

boolean sameColor(Card a, Card b, Card c) {
    if (allEqual(getColor(a), getColor(b), getColor(c))) {
      return true;
    }
    return false;
}

boolean diffColor(Card a, Card b, Card c) {
  if (allDifferent(getColor(a), getColor(b), getColor(c))) {
    return true;
  }
  return false;
}

String getShape(Card card) {
  String str = "";
  switch (card.getCol()) {
  case 1:
    str = "diamond";
    break;
  case 2:
    str = "bean";
    break;
  case 3:
    str = "worm";
    break;
  case 4:
    str = "diamond";
    break;
  case 5:
    str = "bean";
    break;
  case 6:
    str = "worm";
    break;
  case 7:
    str = "diamond";
    break;
  case 8:
    str = "bean";
    break;
  case 9:
    str = "worm";
    break;
  }
  return str;
}

boolean sameShape(Card a, Card b, Card c) {
  if (allEqual(getShape(a), getShape(b), getShape(c))) {
    return true;
  }
  return false;
}

boolean diffShape(Card a, Card b, Card c) {
  if (allDifferent(getShape(a), getShape(b), getShape(c))) {
    return true;
  }
  return false;
}

String getFill(Card card) {
  if (between (card.getRow(), 1, 3)) {
    return "full";
  } else {
    if (between (card.getRow(), 4, 6)) {
      return "dashed";
    } else {
      return "clean";
    }
  }
}

boolean sameFill(Card a, Card b, Card c) {
  if (allEqual(getFill(a), getFill(b), getFill(c))) {
    return true;
  }
  return false;
}

boolean diffFill(Card a, Card b, Card c) {
  if (allDifferent(getFill(a), getFill(b), getFill(c))) {
    return true;
  }
  return false;
}

String getCount(Card card) {
  String str = "";
  switch (card.getRow()) {
  case 1:
    str = "1";
    break;
  case 2:
    str = "2";
    break;
  case 3:
    str = "3";
    break;
  case 4:
    str = "1";
    break;
  case 5:
    str = "2";
    break;
  case 6:
    str = "3";
    break;
  case 7:
    str = "1";
    break;
  case 8:
    str = "2";
    break;
  case 9:
    str = "3";
    break;
  }
  return str;
}

boolean sameCount(Card a, Card b, Card c) {
  if (allEqual(getCount(a), getCount(b), getCount(c))) {
    return true;
  }
  return false;
}

boolean diffCount(Card a, Card b, Card c) {
  if (allDifferent(getCount(a), getCount(b), getCount(c))) {
    return true;
  }
  return false;
}  

boolean isSet(Card a, Card b, Card c) {
  return ((sameColor(a, b, c) || diffColor(a, b, c)) && (sameShape(a, b, c) || diffShape(a, b, c)) && (sameFill(a, b, c) || diffFill(a, b, c)) && (sameCount(a, b, c) || diffCount(a, b, c)));
}

boolean allEqual(String a, String b, String c) {
  if (a == b && a == c) {
    return true;
  }
  return false;
}

boolean allDifferent(String a, String b, String c) {
  if (a != b && b != c && a != c) {
    return true;
  }
  return false;
}


  
