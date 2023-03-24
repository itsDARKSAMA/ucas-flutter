void main(List<String> args) {
    check(80); // avg checker
}

  void check(int avg) {
    switch (avg) {
      case 90:
        print('ممتاز');
        continue A;
      case 80:
        print('جيد جداً');
        continue A;

      case 70:
        print('جيد');
        continue A;
      case 60:
        print('متوسط');
        continue C;
      case 50:
        print('مقبول');
        continue C;
      C:
      case 4:
        print('راسب');
        break;
      A:
      case 2:
        print('ناجح');
        break;
    }
  }