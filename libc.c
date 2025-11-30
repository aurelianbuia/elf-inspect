int f1(int a, int b) {
  return a + b;
}

int f2() {
  return f1(42, 67);
}

__attribute__((visibility("protected")))
int f3() {
  return 42;
}

__attribute__((visibility("hidden")))
int f4() {
  return 67;
}

__attribute__((visibility("internal")))
int f5() {
  return 24;
}

static int STATIC_VARIABLE;

int VARIABLE;

const int CONST_VARIABLE;
