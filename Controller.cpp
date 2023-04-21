#include "Controller.h"
#include <stdlib.h>

Controller::Controller()
{

}

void Controller::writeUSBDevicesToFile()
{
    system("dmesg | grep -i usb > ~/Lab/lab1.txt");
}
