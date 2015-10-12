 char val; // Data received from the serial port
 int ledPin1 = 13; // Set the pin to digital I/O 13
 int ledPin2 = 12; // Set the pin to digital I/O 12
 int ledPin3 = 11; // Set the pin to digital I/O 11
 int ledPin4 = 10; // Set the pin to digital I/O 10
 int ledPin5 = 9; // Set the pin to digital I/O 9

 void setup() {
   pinMode(ledPin1, OUTPUT); // Set pin 1 as OUTPUT
   pinMode(ledPin2, OUTPUT); // Set pin 2 as OUTPUT
   pinMode(ledPin3, OUTPUT); // Set pin 3 as OUTPUT
   pinMode(ledPin4, OUTPUT); // Set pin 4 as OUTPUT
   pinMode(ledPin5, OUTPUT); // Set pin 5 as OUTPUT
   Serial.begin(9600); // Start serial communication at 9600 bps
 }

 void loop() {
   if (Serial.available()) 
   { // If data is available to read,
     val = Serial.read(); // read it and store it in val
   }
   if (val == '1') 
   { // If 1 was received
     digitalWrite(ledPin1, HIGH); //turn the first LED on
     digitalWrite(ledPin2, HIGH); //turn the second LED on
     digitalWrite(ledPin3, HIGH); //turn the third LED on
     digitalWrite(ledPin4, HIGH); //turn the fourth LED on
     digitalWrite(ledPin5, HIGH); //turn the fifth LED on
   } else {
     digitalWrite(ledPin1, LOW); //otherwise turn it off
     digitalWrite(ledPin2, LOW); //otherwise turn it off
     digitalWrite(ledPin3, LOW); //otherwise turn it off
     digitalWrite(ledPin4, LOW); //otherwise turn it off
     digitalWrite(ledPin5, LOW); //otherwise turn it off
   }
   delay(10); // Wait 10 milliseconds for next reading
}

