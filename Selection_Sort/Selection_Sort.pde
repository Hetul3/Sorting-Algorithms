int[] values;
int dx = 1;
int i = 0;

void sorting(int arr[]) {
 int j = i;
 for(int k = i; k < arr.length; k++) {
   if(arr[j] > arr[k]) {
      j = k;
   }
 }
 int temp = arr[j];
 arr[j] = arr[i];
 arr[i] = temp;
 i++;
}

void setup() {
    size(800,500);
  values = new int[width/dx];
  for(int i = 0; i < values.length; i++) {
    values[i] = Math.round(random(height - 20));
  }
}

void draw() {
   background(0);
  for(int i = 0; i < values.length; i++) {
    stroke(255);
    strokeWeight(1);
    rect(dx * i, height, dx, -height + values[i]);
   }
   if(i < width/dx) {
   sorting(values);
   }
}
