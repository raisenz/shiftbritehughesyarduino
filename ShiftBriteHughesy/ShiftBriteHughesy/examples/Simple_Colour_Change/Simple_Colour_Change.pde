#include "ShiftBriteHughesy.h"
ShiftBriteHughesy sb;

void setup()
{

}

void loop()
{
	changeColourLoop(500);
	changeColourLoop(250);
	changeColourLoop(125);
	changeColourLoop(62);
	changeColourLoop(1000);
}

void changeColourLoop(int delayTime)
{
	sb.sendColour(1023,0,0);
	delay(delayTime);
	sb.sendColour(0,1023,0);
	delay(delayTime);
	sb.sendColour(0,0,1023);
	delay(delayTime);
	sb.sendColour(1023,1023,0);
	delay(delayTime);
	sb.sendColour(1023,0,1023);
	delay(delayTime);
	sb.sendColour(0,1023,1023);
	delay(delayTime);
	sb.sendColour(1023,1023,1023);
	delay(delayTime);
	sb.sendColour(0,0,0);
}