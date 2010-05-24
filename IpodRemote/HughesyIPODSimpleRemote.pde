//working as on 24/APR/10

#include <Bounce.h>
#include <SimpleRemote.h>

const byte BUTTON_PLAY = 6;
const byte BUTTON_NEXT = 5;
const byte BUTTON_PREVIOUS = 3;
const byte BUTTON_MENU = 2;
const byte BUTTON_SCROLL_UP = 7;
const byte BUTTON_SCROLL_DOWN = 4;
const byte BUTTON_SELECT = 8;


const unsigned long DEBOUNCE_MS = 50;

Bounce btnPlay(BUTTON_PLAY, DEBOUNCE_MS);
Bounce btnNext(BUTTON_NEXT, DEBOUNCE_MS);
Bounce btnPrevious(BUTTON_PREVIOUS, DEBOUNCE_MS);                      
Bounce btnMenu(BUTTON_MENU, DEBOUNCE_MS);
Bounce btnScrollUp(BUTTON_SCROLL_UP, DEBOUNCE_MS);
Bounce btnScrollDown(BUTTON_SCROLL_DOWN, DEBOUNCE_MS);
Bounce btnSelect(BUTTON_SELECT, DEBOUNCE_MS);

SimpleRemote simpleRemote;

void setup()
{
  //init buttons
  for(int i = BUTTON_PLAY; i < BUTTON_SELECT+1; i++)
  {
    pinMode(i,INPUT);
    digitalWrite(i, HIGH);
  }
  simpleRemote.setup();
}

void loop()
{
  simpleRemote.loop();

  if(btnPlay.update())
  {
    if (btnPlay.read() == LOW)
    {
      simpleRemote.sendPlay();

    }
    else
    {
      simpleRemote.sendButtonReleased();
    }
  }
  if(btnNext.update())
  {
    if (btnNext.read() == LOW)
    {
      simpleRemote.sendSkipForward();
    }
    else
    {
      simpleRemote.sendButtonReleased();
    }
  }
  if(btnPrevious.update())
  {
    if (btnPrevious.read() == LOW)
    {
      simpleRemote.sendSkipBackward();
    }
    else
    {
      simpleRemote.sendButtonReleased();
    }
  }
if(btnMenu.update())
  {
    if (btnMenu.read() == LOW)
    {
      simpleRemote.sendMenuButton();
    }
    else
    {
      simpleRemote.sendButtonReleased();
    }
  }
if(btnScrollUp.update())
  {
    if (btnScrollUp.read() == LOW)
    {
      simpleRemote.sendScrollUp();
    }
    else
    {
      simpleRemote.sendButtonReleased();
    }
  }
if(btnScrollDown.update())
  {
    if (btnScrollDown.read() == LOW)
    {
      simpleRemote.sendScrollDown();
    }
    else
    {
      simpleRemote.sendButtonReleased();
    }
  }
if(btnSelect.update())
  {
    if (btnSelect.read() == LOW)
    {
      simpleRemote.sendOkSelectButton();
    }
    else
    {
      simpleRemote.sendButtonReleased();
    }
  }


}








