#include "ShiftBriteHughesy.h"
ShiftBriteHughesy sb;

void setup()
{
  sb = ShiftBriteHughesy();
}

void loop()
{
  //flash randomly on one shiftbrite with 1/4 second delay
  int r = random(0,1023);
  int g = random(0,1023);
  int b = random(0,1023);
  sb.sendColour(r,g,b);
  delay(250);
}
