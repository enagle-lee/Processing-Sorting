import java.util.Arrays;

float[] numbers = new float[100];
int i = 0;

void setup() {
  size(600, 400);
  frameRate(4);
  
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] = (float)Math.random();
  }
  
  // print(Arrays.toString(numbers));
}

void draw() {
  drawBars();
  
  // selection sort

  float min = Float.MAX_VALUE;
  int minIndex = i;
  for (int j = i; j < numbers.length; j++) {
    if (numbers[j] < min) {
      min = numbers[j];
      minIndex = j;
    }
  }
  if (i != minIndex) {
    float temp = numbers[i];
    numbers[i] = min;
    numbers[minIndex] = temp;
  }
  i++;
}

void drawBars() {
  background(200);
  fill(40);
  for (int i = 0; i < numbers.length; i++) {
    float spacing = (float)width / numbers.length; 
    rect(i * spacing, height, spacing, -numbers[i] * height);
  }
}
