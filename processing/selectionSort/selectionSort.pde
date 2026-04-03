  //bubble sorting
  for (int i = 0; i < numbers.length - 1; i++) {
    if (numbers[i] > numbers[i + 1]) {
      float temp = numbers[i + 1];
      numbers[i + 1] = numbers[i];
      numbers[i] = temp;
    }
  }