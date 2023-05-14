import 'dart:math';

void main() {
  double lat1 = -6.2146;
  double lon1 = 106.8451;
  double lat2 = -8.1805;
  double lon2 = 113.6681;

  double distance = calculateDistance(lat1, lon1, lat2, lon2);
  print(
      'Jarak antara Jakarta dan Jember adalah ${distance.toStringAsFixed(2)} km');
}

double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  const double earthRadius = 6371; // radius of the earth in kilometers

  // convert latitudes and longitudes from degrees to radians
  final double lat1Radians = radians(lat1);
  final double lon1Radians = radians(lon1);
  final double lat2Radians = radians(lat2);
  final double lon2Radians = radians(lon2);

  final double latDiffRadians = lat2Radians - lat1Radians;
  final double lonDiffRadians = lon2Radians - lon1Radians;

  final double a = pow(sin(latDiffRadians / 2), 2) +
      cos(lat1Radians) * cos(lat2Radians) * pow(sin(lonDiffRadians / 2), 2);
  final double c = 2 * atan2(sqrt(a), sqrt(1 - a));

  return earthRadius * c; // return distance in kilometers
}

double radians(double degrees) {
  return degrees * pi / 180;
}
