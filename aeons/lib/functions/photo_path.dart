photoPath(String value) {
  if (value.toLowerCase().contains('abundance')) {
    return 'lib/assets/path/Path_Abundance.png';
  } else if (value.toLowerCase().contains('destruction')) {
    return 'lib/assets/path/Path_Destruction.png';
  } else if (value.toLowerCase().contains('erudition')) {
    return 'lib/assets/path/Path_Erudition.png';
  } else if (value.toLowerCase().contains('harmony')) {
    return 'lib/assets/path/Path_Harmony.png';
  } else if (value.toLowerCase().contains('nihility')) {
    return 'lib/assets/path/Path_Nihility.png';
  } else if (value.toLowerCase().contains('preservation')) {
    return 'lib/assets/path/Path_Preservation.png';
  } else if (value.toLowerCase().contains('hunt')) {
    return 'lib/assets/path/Path_The_Hunt.png';
  } else {
    return 'lib/assets/Path_X.png';
  }
}
