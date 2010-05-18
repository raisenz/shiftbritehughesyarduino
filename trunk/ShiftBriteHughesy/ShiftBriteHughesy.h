/*
	ShiftBriteHughesy.h - A library to run shiftbrites
	Created by Ashley J. Hughes, 17 May 2010.
	Based on a post found @ http://macetech.com/blog/node/54
*/
#ifndef ShiftBriteHughesy_h
#define ShiftBriteHughesy_h

#include "WProgram.h"

class ShiftBriteHughesy
{
public:
	ShiftBriteHughesy();
	void sendColour(int r, int g, int b);
private:
	int _SB_CommandMode;
	int _SB_RedCommand;
	int _SB_GreenCommand;
	int _SB_BlueCommand;
	int _dPin;
	int _lPin;
	int _ePin;
	int _cPin;
	unsigned long _SB_CommandPacket;
	void _SB_SendPacket();
};

#endif