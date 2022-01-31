int[] values;
int dx = 1;

void sorting(int[] arr) {
int Length = arr.length;
    
    if(Length < 2) {
      return;
    }
    
    int midIndex = Length/2;
    int[] left = new int[midIndex];
    int[] right = new int[Length - midIndex];
    
    for(int i = 0; i < midIndex; i++) {
      left[i] = arr[i];
    }
    for(int i = midIndex; i < Length; i++) {
      right[i - midIndex] = arr[i];
    }
    
    sorting(left);
    sorting(right);
    
    
    //merging
    int leftLength = left.length;
    int rightLength = right.length;
    
    int i = 0, j = 0, k = 0; 
    
    while(i < leftLength && j < rightLength) {
      if(left[i] <= right[j]) {
        arr[k] = left[i];
        i++;
      }
      else {
        arr[k] = right[j];
        j++;
      }
      k++;
    }
    while(i < leftLength) {
      arr[k] = left[i];
      i++;
      k++;
    }
    while(j < rightLength) {
      arr[k] = right[j];
      j++;
      k++;
    }
    try{Thread.sleep(1);} catch(Exception e) {}; //adding delay
    delay(1);
    redraw();
  }


Thread delay = new Thread(){
  public void run(){
    sorting(values);
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
