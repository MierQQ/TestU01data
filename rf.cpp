#include "gdef.h"
#include "swrite.h"
#include "bbattery.h"
#include <stdio.h>

int main (int argc, char** argv)
{
    if (argc != 2) {
	printf("Usage: %s filename\n", argv[0]);
	return 1;
    }
    swrite_Basic = FALSE;
    bbattery_RabbitFile (argv[1], 1048576);
    return 0;
}

