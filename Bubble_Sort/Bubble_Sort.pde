float[] values;
int dx = 10;
int i = 0;
int j = 0;


void swap(float[] arr, int a, int b) {
  float temp = arr[a];
   arr[a] = arr[b];
   arr[b] = temp;
   delay(0); //change delay
 }

void setup() {
  size(800,500);
  values = new float[width/dx];
  for(int i = 0; i < values.length; i++) {
    values[i] = random(height - 20);
  }

  for (int i = 0; i< values.length; i++) {
   for(int j=0; j < values.length -i -1; j++) {
   }
 }
}

void draw() {
  background(0);
  
  float a = values[j];
  float b = values[j+1];
   if(a<b) {
     swap(values, j, j+1);
   } 
   
   if(i < values.length) {
   j = j + 1;
   if(j >= values.length - i - 1) {
     j = 0;
     i = i + 1;
   }
  }
   
   else {
     textSize(40);
     fill(20, 201, 68);
     text(i * (i-1) / 2 + " Comparisons!", 20, 100);
     noLoop();
   }
 
  for(int i = 0; i < values.length; i++) {
    stroke(255);
    strokeWeight(1);
    rect(dx * i, height, dx, -height + values[i]);
   }
 }
