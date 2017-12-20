/*
  Magabot.h - Library for controlling Magabot robotics platform.
  Created by Francisco Dias & artica.cc, December 23, 2011.
  Released into the public domain.
  http://magabot.cc/
*/

//#include "WProgram.h"
#include "Magabot.h"
#include <inttypes.h>
//#include <Math.h>
#include "Wire.h"

Sonar::Sonar()
{
}

uint8_t Sonar::attach(int address)
{
	id = address;
}

void Sonar::detach()
{
	id = 0;
}

int Sonar::read()
{
	return value;
}

int Sonar::update()
{
	if (state == 0)
	{
		Wire.beginTransmission(0x70 + id);
		Wire.write((byte)0);
		Wire.write(0x51);
		Wire.endTransmission();
		state = 1;
		time = millis() + 50;
	}
	else if (millis() > time)
	{
		// step 3: instruct sensor to return a particular echo _sonarReading
		Wire.beginTransmission(0x70 + id); // transmit to device #112
		Wire.write(0x02);             // sets register pointer to echo #1 register (0x02)
		Wire.endTransmission();      // stop transmitting

		// step 4: request _sonarReading from sensor
		Wire.requestFrom(0x70 + id, 2);    // request 2 chars from slave device #112

		// step 5: receive _sonarReading from sensor
		if(2 <= Wire.available())    // if two chars were received
		{
			value = Wire.read();  // receive high char (overwrites previous _sonarReading)
			value = value << 8;    // shift high char to be high 8 bits
			value |= Wire.read(); // receive low char as lower 8 bits

			state = 0;
		}
		else state = 0;		
		return 1;
	}
	
	return 0;
}

bool Sonar::attached()
{
	return id != 0;
}

Magabot::Magabot()
{
	// initialize the digital pin as an output.
	// Pin 13 has an LED connected on most Arduino boards:
	pinMode(13, OUTPUT);    
	pinMode(12, OUTPUT);

	//RGB led pins
	pinMode(11, OUTPUT);     
	pinMode(10, OUTPUT); 
	pinMode(9, OUTPUT);   
  
	//Bumpers
	pinMode(2, INPUT);
	pinMode(3, INPUT);
	pinMode(4, INPUT);
	pinMode(5, INPUT);

	//IR
	pinMode(6, OUTPUT);     
	pinMode(7, OUTPUT);     
	pinMode(8, OUTPUT);     
	analogWrite(11,255);
	analogWrite(10,255);
	analogWrite(9,255);

	Wire.begin();

	_sonarReading = 0;
	_sonarNumber = 0;
	_sonarId = 1;

	irMaxValue = 1023;
	//clicksPerTurn = 3900;
        clicksPerTurn = 7800;
	for (int i = 0; i < 5; i++)
	{
		sonarRead[i].attach(i+1);
	}
}

//**************************//
//******Actuate motors******//
//**************************//
void Magabot::actuateMotors(int vel1, int vel2)
{
  v1=-vel1;
  v2=-vel2; 
  vel2 = -vel2;
 
}

//**************************//
//******Update motors******//
//**************************//
void Magabot::update()
{
  if(motorUpdateTime <millis())
  {
	  int vel1 = v1;
	  int vel2 = -v2;
	  byte v1b1 = vel1 >> 8;
	  byte v1b2 = vel1 & 0xFF;
	  byte v2b1 = vel2 >> 8;
	  byte v2b2 = vel2 & 0xFF;
	  
	  Wire.beginTransmission(0x16);
	  Wire.write((byte)0);
	  Wire.write(v1b1);
	  Wire.write(v1b2);
	  Wire.write(1);    //  high byte
	  Wire.endTransmission();
	  
	  Wire.beginTransmission(0x15);
	  Wire.write((byte)0);
	  Wire.write(v2b1);
	  Wire.write(v2b2);
	  Wire.write(1);    //  high byte
	  
	  Wire.endTransmission();

	  motorUpdateTime = millis()+100;
  }
  
}
//************************//
//******Actuate LEDs******//
//************************//
void Magabot::actuateLEDs(int Red, int Green, int Blue)
{
	Red = 255 - Red;
	Green = 255 - Green;
	Blue = 255 - Blue;
	
	analogWrite(11,(unsigned char) Green);
	analogWrite(10,(unsigned char) Red);
	analogWrite(9,(unsigned char) Blue);
}

//********************************//
//******Read Battery Status*******//
//********************************//
void Magabot::readBattery()
{
	batteryRead = analogRead(3);
	batteryRead = analogRead(3);
          
	if (batteryRead>690) 
	{
		digitalWrite(13, LOW);
		digitalWrite(12, LOW);
		actuateMotors(0,0);
	}
	else if (batteryRead>616)
	{
		digitalWrite(13, HIGH);
		digitalWrite(12, LOW);
	}
	else if (batteryRead>584)
	{
		digitalWrite(13, HIGH);
		digitalWrite(12, HIGH);
	}
	else 
	{
		digitalWrite(13, LOW);
		digitalWrite(12, HIGH);
	}
}

//***************************************//
//*****SONARS READ AND CHANGE ADRESS*****//
//***************************************//
void Magabot::readSonars()
{ 	
    int state = sonarRead[_sonarId].update();
	if (state > 0)
	{
		sonarState[_sonarId] = (sonarRead[_sonarId].read()>sonarMaxValue)?true:false;   
		_sonarId = (_sonarId + 1) % 5;
	}
	/*
	if (_sonarNumber==0)
	{
		Wire.beginTransmission(0x70+_sonarId);
		Wire.write((byte)0);
		Wire.write(0x51);
		Wire.endTransmission();
		_sonarNumber=1;
		_time = millis()+50;
	}
	else if (millis()>_time)
	{
		// step 3: instruct sensor to return a particular echo _sonarReading
		Wire.beginTransmission(0x70+_sonarId); // transmit to device #112
		Wire.write(0x02);             // sets register pointer to echo #1 register (0x02)
		Wire.endTransmission();      // stop transmitting

		// step 4: request _sonarReading from sensor
		Wire.requestFrom(0x70+_sonarId, 2);    // request 2 chars from slave device #112

		// step 5: receive _sonarReading from sensor
		if(2 <= Wire.available())    // if two chars were received
		{
			_sonarReading = Wire.read();  // receive high char (overwrites previous _sonarReading)
			_sonarReading = _sonarReading << 8;    // shift high char to be high 8 bits
			_sonarReading != Wire.read(); // receive low char as lower 8 bits

			sonarRead[_sonarId]=_sonarReading;
			sonarState[_sonarId] = (sonarRead[_sonarId]>sonarMaxValue)?true:false;   
			_sonarNumber=0;
			_sonarId++;
			if (_sonarId==6) _sonarId=1; //_sonarId==6
		}
		else
		{
			_sonarNumber=0;
			_sonarId++;
			if (_sonarId==6) _sonarId=1; //_sonarId==6      
		}
	}*/
}

//Change I2C sonarRead Address
void Magabot::changeSonarAddress(char oldAddress, char newAddress)
{
	Wire.beginTransmission(oldAddress);
	Wire.write((byte)0x00);
	Wire.write(0xA0);
	Wire.endTransmission();

	Wire.beginTransmission(oldAddress);
	Wire.write((byte)0x00);
	Wire.write(0xAA);
	Wire.endTransmission();

	Wire.beginTransmission(oldAddress);
	Wire.write((byte)0x00);
	Wire.write(0xA5);
	Wire.endTransmission();

	Wire.beginTransmission(oldAddress);
	Wire.write((byte)0x00);
	Wire.write(newAddress);
	Wire.endTransmission();
}

//*************************************//
//****IR ground sensors read***********//
//*************************************//
void Magabot::readIR() 
{
	digitalWrite(8, HIGH);
	analogRead(2);
	irRead[0] = analogRead(2);
	irState[0] = (irRead[0]>irMaxValue)?true:false;
	digitalWrite(8, LOW);
  
	digitalWrite(7, HIGH);
	analogRead(1);
	irRead[1] = analogRead(1);
	irState[1] = (irRead[1]>irMaxValue)?true:false;
	digitalWrite(7, LOW);
  
	digitalWrite(6, HIGH);
	analogRead(0);
	irRead[2] = analogRead(0);
	irState[2] = (irRead[2]>irMaxValue)?true:false;
	digitalWrite(6, LOW);
}

//***************************************//
//****Front bumpers read function********//
//***************************************//
void Magabot::readBumpers()
{
	bumperRead[0] = (digitalRead(2)==1)?false:true;
	bumperRead[1] = (digitalRead(3)==1)?false:true;
	bumperRead[2] = (digitalRead(4)==1)?false:true;
	bumperRead[3] = (digitalRead(5)==1)?false:true;
}


//***************************//
//****** Odometer ***********//
//***************************//
void Magabot::readClicks()
{
	//primeira parte
	leftClicks =0;
	rightClicks =0;
	Wire.beginTransmission(0x15);
	Wire.write(0x19);
	Wire.write(1);
	Wire.endTransmission();

	delay(1);  
	
	Wire.beginTransmission(0x16);
	Wire.write(0x19);
	Wire.write(1);  
	Wire.endTransmission();

	delay(1); 

	Wire.beginTransmission(0x15); // transmit to device 0x15
	Wire.write(0x15);             // sets register pointer to echo #1 register (0x15)
	Wire.endTransmission();

	Wire.requestFrom(0x15, 2);
  
	if(2 <= Wire.available())    // if two chars were received
	{
		leftClicks = (short)((Wire.read() << 8) + Wire.read());
	}
  
	Wire.beginTransmission(0x16); // transmit to device 0x16
	Wire.write(0x15);             // sets register pointer to echo #1 register (0x15)
	Wire.endTransmission();
  
	Wire.requestFrom(0x16, 2);
	if(2 <= Wire.available())    // if two chars were received
	{
		rightClicks = (short)((Wire.read() << 8) + Wire.read());
	}
	//primeira parte
	Wire.beginTransmission(0x15);
	Wire.write(0x14);
	Wire.write((byte)0);
	Wire.endTransmission();
	delay(1);  

	Wire.beginTransmission(0x16);
	Wire.write(0x14);
	Wire.write((byte)0);
	Wire.endTransmission();
	delay(1);  
	leftMotorVelocity = leftClicks * 2 * PI / clicksPerTurn;
	rightMotorVelocity = rightClicks * 2 * PI / clicksPerTurn;
}
