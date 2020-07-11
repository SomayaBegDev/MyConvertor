List<String> unitsName = const [
  'Bit',
  'Length',
  'Weight',
  'Time',
  'Currency',
  'Temperature'
];
List<Map> unitsNav = [
  unitConvMemoreyVal,
  unitConvLengthVal,
  unitConvWeighthVal,
  unitConvTimeVal,
  unitConvCurrencyVal,
  unitConvTempVal
];

Map<String, dynamic> unitConvMemoreyVal = const {
  'bit': 1,
  'Byte': 0.125,
  'KiloByte': 0.0001220703125,
  'MegaByte': 1.19209289550781e-07,
  'GigaByte': 1.16415321826935e-10
};

Map<String, dynamic> unitConvLengthVal = const {
  'nanometer': 1,
  'micrometer': 0.001,
  'millimeter': 0.000001,
  'centimeter': 0.0000001,
  'decimeter': 0.00000001,
  'meter': 0.0000000009999999999,
  'kilometer': 0.000000000001
};

Map<String, dynamic> unitConvWeighthVal = const {
  'Ounces': 1,
  'Pounds': 0.0625,
  'Stones': 0.004464286,
  'Micrograms': 2.834952e+7,
  'Milligrams': 28349.52,
  'Grams': 28.34952,
  'Kilograms': 0.02834952
};

List<String> unitConvTime = const ['millisecond', 'second', 'minute', 'hour'];

Map<String, dynamic> unitConvTimeVal = const {
  'millisecond': 1,
  'second': 0.001,
  'minute': 1.6666666666666666666666666666667e-5,
  'hour': 2.7777777777777777777777777777778e-7
};

List<String> unitConvCurrency = const ['NIS', 'USD', 'EGP', 'JD'];
Map<String, dynamic> unitConvCurrencyVal = const {
  'NIS': 1,
  'USD': 3.5,
  'EGP': 0.25,
  'JD': 5
};

Map<String, dynamic> unitConvTempVal = const {
  'Celsius': 1,
  'Fahrenheit': 33.8,
  'Rankine': 493.47,
  'Reaumur': 0.8,
  'Kelvin': 274.15
};
