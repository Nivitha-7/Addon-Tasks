class Main
{
static int add(int x, int y) {
  return x + y;
}

static double add(double x, double y) {
  return x + y;
}

public static void main(String[] args) {
  int myNum1 = add(8, 5);
  double myNum2 = add(4.3, 6.26);
  System.out.println("int: " + myNum1);
  System.out.println("double: " + myNum2);
}
}
