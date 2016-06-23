unsigned long testEvent;

void setup() {
 
  Serial.begin(115200);
 
  testEvent=0;
}

void loop() {
  if(millis()-testEvent>5000)
  {
    testEvent=millis();
    Serial.write("test");
  }
 
}



