#define USE_LONGLONG
#include "gdef.h"
#include "unif01.h"
#include "ulcg.h"
#include "swrite.h"
#include "bbattery.h"
#include <stdlib.h>

int main (int argc, char** argv)
{
    if (argc != 5) {
        printf("Usage: %s e a c s\n", argv[0]);
        return 1;
    }
    long long int e = atoll(argv[1]);
    long long int a = atoll(argv[2]);
    long long int c = atoll(argv[3]);
    long long int s = atoll(argv[4]);
    unif01_Gen *gen;
    gen = ulcg_CreatePow2LCGL(e, a, c, s);
    bbattery_BigCrush(gen);
    ulcg_DeleteGen(gen);
    return 0;
}
