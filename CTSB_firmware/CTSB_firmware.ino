//
//
//
int the_buttons[] = {
  2, 3, 4, 5, 6, 7, 8};
int led = 13;
int button_values[7];
// 2 second cool down inbetween button presses
int button_cool_down = 200;
int last_press[] = {
  0, 0, 0, 0, 0, 0, 0, 0
  };

void setup(){
  Serial.begin(57600);
  pinMode(led, OUTPUT);
  digitalWrite(led, HIGH);
  for (int i = 0; i < 8; i++){
    pinMode(the_buttons[i], INPUT); 
  }
  delay(1000);
  digitalWrite(led, LOW);
}

void readButtons(){
  for (int i = 0; i < 7; i++){
    button_values[i] = digitalRead(the_buttons[i]); 
    if (button_values[i] == 1){
      if (millis() > last_press[i] + button_cool_down){
        last_press[i] = millis();    
        reportButtonStates(); 
      }
    }
  }
}

void reportButtonStates(){
  for (int i = 0; i < 8; i++){
    if (button_values[i] == 1){
       Serial.write(i); 
    }
  }
}

void loop(){
  readButtons();
  delay(90);
}
