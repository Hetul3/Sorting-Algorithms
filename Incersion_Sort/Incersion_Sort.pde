int[] values;
int dx = 1;

void sortting(int[] arr) {
  for(int i = 1; i < arr.length; i++) {
    int Value1 = arr[i];
    
    while(i >= 1 && arr[i-1] > Value1) {
      arr[i] = arr[i-1];
      i = i-1;
    }
    arr[i] = Value1;
    try{Thread.sleep(1);} catch(Exception e) {}; //adding delay
    delay(0);
    redraw();
  }
}

Thread delay = new Thread(){
  public void run(){
    sortting(values);
  }
};


void setup() {
    size(800,500);
  values = new int[width/dx];
  for(int i = 0; i < values.length; i++) {
    values[i] = Math.round(random(height - 20));
  }
  delay.start();
}

void draw() {
   background(0);
  for(int i = 0; i < values.length; i++) {
    stroke(255);
    strokeWeight(1);
    rect(dx * i, height, dx, -height + values[i]);
   }
}
