List<double> convertToF(List<double> temperaturesInC) {
    List<double> temperaturesInConverted = [];
    for (int i = 0; i < temperaturesInC.length; i++) {
        double fahrenheit = (temperaturesInC[i] * 9/5) + 32;
        temperaturesInConverted.add(double.parse(fahrenheit.toStringAsFixed(2)));
    }
    return temperaturesInConverted;
}
