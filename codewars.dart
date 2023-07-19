//Dekart tekisligida butun sonlarning funksiyalari
int sumin(int n) {
  var sum = 0;
  int b = n;
  var n1 = 1;
  for (var i = 1; i <= n; i++) {
    sum += b * n1;
    n1++;
    var sum1 = 0;
    for (var a = 0; a < b; a++) {
      sum1 += a;
    }
    sum += sum1;
    b--;
  }
  return sum;
}


int sumax(int n) {
  var sum2 = 0;
  int b = 1;
  var n1 = n - 1;
  for (var i = 1; i <= n; i++) {
    sum2 += b * n1;
    n1--;
    var sum1 = 0;
    for (var a = 0; a < b; a++) {
      sum1 += a;
    }
    sum2 += sum1;
    b++;
  }
  return sumin(n) + sum2;
}

int sumsum(int n) {
  return sumin(n) + sumin(n)+sumax(n)-sumin(n) ;
}

void main() {
  print(sumin(8));
  print(sumax(8));
  print(sumsum(8));
}
//demon equlas 5 kyu
import 'dart:math';

List<List<int>> solEqua(n) {
  List<List<int>> x1 = [];
  if (n % 2 == 0) {
    int y = 0;
    double x = sqrt(n + (4 * y * y));
    while (x < n) {
      x = sqrt(n + (4 * y * y));
      if (x % 1 == 0) {
        x1.add([x.toInt(), y]);
      }
      y++;
    }
    return x1.reversed.toList();
  }
  if (n % 2 == 1) {
    for (var x = n ~/ 2 + 1; x > 0; x--) {
      double y = sqrt((n - x * x) ~/ 4 * -1);
      if (y % 1 == 0) {
        x1.add([x, y.toInt()]);
      }
    }
    for (var i = 0; i < x1.length; i++) {
      if (x1[i][0] % 2 == 0 || x1[i][1] == 0) {
        x1.remove(x1[i]);
        i--;
      }
    }
  }
  return x1;
}

void main(List<String> args) {
  print(solEqua(900000009));
}

//Steps_in_Primes
// List<int> step(int g, int start, int end) {
//   List x = [];
//   for (int i = start; i <= end; i++) {
//     for (int a = 2; a < i; a++) {
//       if (i % a == 0) {
//         break;
//       }
//       if (a + 1 == i) {
//         x.add(i);
//       }
//     }
//   }
//   for (var i = 0; i < x.length; i++) {
//     int a = x[i];
//     if (x.contains(a + g)) {
//       return [a, a + g];
//     }
//   }
//   return [];
// }

void main() {
  print(step(2, 30000, 100000));
}

List<int> step(int g, int start, int end) {
  for (int i = start; i <= end; i++) {
    for (var a = 2; a < end; a++) {
      if (i % a == 0) {
        break;
      }
      if (a + 1 == i) {
        int b = i + g;
        for (int s = 2; s < b; s++) {
          if (b % s == 0) {
            break;
          }
          if (s + 1 == b) {
            return [i, b];
          }
        }
      }
    }
  }
  return [];
}
