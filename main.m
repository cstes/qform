
#include <cakit.h>
#include <objpak.h>
#include "QuadraticForm.h"

int main(int argc,char *argv[])
{
   id q,v;

   v = [OrdCltn new]; 
   [v add:[BigInt int:1]];
   [v add:[BigInt int:1]];
   [v add:[BigInt int:1]];
  
   /* create 1 x^2 + 1 y^2 + 1 z^2 over integers */
   q = [QuadraticForm diagonal:v];

   [q printLine];

   /* [[q determinant] printLine]; */

   v = [OrdCltn new]; 
   [v add:[BigInt int:100]];
   [v add:[BigInt int:101]];
   [v add:[BigInt int:102]];
  
   [[q evaluateAll:v] printLine];
}

