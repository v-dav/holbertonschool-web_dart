List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC
      .map((t) => double.parse(((t * 9 / 5) + 32).toStringAsFixed(2)))
      .toList();
}
