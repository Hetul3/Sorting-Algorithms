int[] values;
int dx = 1;  //changing dx will change the amount of rectangles to sort
int i = 0;


 void swap(int[] arr, int index1, int index2) {
   int temp = arr[index1];
   arr[index1] = arr[index2];
   arr[index2] = temp;
   
   try{Thread.sleep(10);} catch(Exception e) {};  //to add delay
   delay(0); //change delay
   redraw();
  }
  
  void sort (int[] array, int lowIndex, int highIndex) {

  if(lowIndex >= highIndex) {
    return;
  }
  int pivot = array[highIndex];
  
  int left = lowIndex;
  int right = highIndex;
  
  while(left < right) {
    while(array[left] <= pivot && left < right) {
      left++;
    }
    while(array[right] >= pivot && left < right) {
      right--;
    }
    swap(array, left, right);
  }
  swap(array, left, highIndex);
  sort(array, lowIndex, left - 1);
  sort(array, left + 1, highIndex);

}


Thread delay = new Thread(){
  public void run(){
    sort(values, 0, values.length - 1);
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
