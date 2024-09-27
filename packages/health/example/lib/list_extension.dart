import 'dart:math' as math;
import 'dart:math';

extension NumList on Iterable<num> {
  num get max => isEmpty ? 0 : reduce((a, b) => math.max(a, b));
  num get min => isEmpty ? 0 : reduce((a, b) => math.min(a, b));
  num get adv => isEmpty ? 0 : reduce((a, b) => a + b) / length;
  num get sum => isEmpty ? 0 : reduce((a, b) => a + b);

  int get lastMaxIndex {
    num max = 0;
    int index = 0;
    final list = toList();
    for (int i = 0; i < length; i++) {
      if (list[i] >= max) {
        index = i;
        max = list[i];
      }
    }
    return index;
  }

  int get lastMinIndex {
    num min = 0;
    int index = 0;
    final list = toList();
    for (int i = 0; i < length; i++) {
      if (list[i] <= max) {
        index = i;
        min = list[i];
      }
    }
    return index;
  }

  num get squaredDiffs {
    if (isEmpty) return 0;
    num mean = adv;
    double sumOfSquaredDiffs = fold(0, (sum, value) => sum + pow(value - mean, 2));
    return sqrt(sumOfSquaredDiffs / length);
  }
}