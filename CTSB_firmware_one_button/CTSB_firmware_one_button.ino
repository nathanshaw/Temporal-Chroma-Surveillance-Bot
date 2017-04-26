// For one 12 position rotary switch and 
// one button
int button = A0;
int switches[] = {
  2, 3, 4, 5, 6, 
  7, 8, 9, 10, 
  11, 12, 13};
int led = 13;
int state = 0;
int button_value;
// 2 second cool down inbetween button presses
int button_cool_down = 300;

void setup(){
  Serial.begin(57600);
  pinMode(led, OUTPUT);
  digitalWrite(led, HIGH);
  for (int i = 0; i < 12; i++){
    pinMode(switches[i], INPUT); 
  }
  delay(1000);
  digitalWrite(led, LOW);
}

void readRotarySwitch(){
  for (int i = 0; i < 12; i++){
    if (digitalRead(switches[i]) == HIGH) {
      if (state != i) {
        Serial.print(i);
        state = i;  
      }
    }
  }
  Serial.println();
}

void loop(){
  readRotarySwitch();
  delay(50);
}

