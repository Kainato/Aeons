photoElement(String value) {
  if (value.toLowerCase().contains('fire')) {
    return 'lib/assets/element/Type_Fire.png';
  } else if (value.toLowerCase().contains('ice')) {
    return 'lib/assets/element/Type_Ice.png';
  } else if (value.toLowerCase().contains('imaginary')) {
    return 'lib/assets/element/Type_Imaginary.png';
  } else if (value.toLowerCase().contains('lightning')) {
    return 'lib/assets/element/Type_Lightning.png';
  } else if (value.toLowerCase().contains('physical.png')) {
    return 'lib/assets/element/Type_Physical.png';
  } else if (value.toLowerCase().contains('quantum')) {
    return 'lib/assets/element/Type_Quantum.png';
  } else if (value.toLowerCase().contains('wind')) {
    return 'lib/assets/element/Type_Wind.png';
  } else {
    return 'lib/assets/Path_X.png';
  }
}
