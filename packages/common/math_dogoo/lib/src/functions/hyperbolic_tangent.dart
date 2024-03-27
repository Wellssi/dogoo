import 'hyperbolic_cosine.dart';
import 'hyperbolic_sine.dart';

double hyperbolicTangent(num x) {
  return hyperbolicSine(x) / hyperbolicCosine(x);
}
