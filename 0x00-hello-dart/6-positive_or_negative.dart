void main(List<String> args) {
  int n = int.parse(args[0]);
  if (n > 0) {
    print('$n is positive');
  } else if (n == 0) {
    print('$n is zero');
  } else if (n < 0) {
    print('$n is negative');
  }
}
