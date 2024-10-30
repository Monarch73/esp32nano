void setup() 
{
    Serial.begin(115200);
	int zahl = analogRead(A0);
	Serial.println(zahl);
}

void loop() 
{

}