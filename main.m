
#include "QuadraticForm.h"

int main(int argc,char *argv[])
{
   id q = [QuadraticForm new];


   [q printLine];

   [[q determinant] printLine];
}



