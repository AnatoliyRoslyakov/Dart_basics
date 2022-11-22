import 'dart:math';

class Point {
  final num x;
  final num y;
  final num z;
  Point(this.x, this.y, this.z);

  void distanceTo(Point another, Point square) {
    var ab = sqrt(
        pow(another.x - x, 2) + pow(another.y - y, 2) + pow(another.z - z, 2));
    print(ab);
    var bc = sqrt(
        pow(x - square.x, 2) + pow(y - square.y, 2) + pow(z - square.z, 2));
    var ac = sqrt(pow(another.x - square.x, 2) +
        pow(another.y - square.y, 2) +
        pow(another.z - square.z, 2));
    var P = (ab + ac + bc) / 2;
    var S = sqrt((P - ab) * (P - ac) * (P - bc) * P);
    print('Расстояние от данной точки до точки в параметре = $ab');
    print('Площадь треугольника = $S');
  }

  factory Point.zero() {
    return Point(0, 0, 0);
  }
}

void main(List<String> args) {
  var point = Point(0, 5, 0); // <-- a
  point.distanceTo(
      Point(5, 15, 5), Point(10, 30, 10)); // <-- расстояние до b, площадь S
}
