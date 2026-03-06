List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF = [];
  for (double tempC in temperaturesInC) {
    double tempF = (tempC * 9/5) + 32;
    tempF = double.parse(tempF.toStringAsFixed(2));

    temperaturesInF.add(tempF);
  }
  return temperaturesInF;
}
