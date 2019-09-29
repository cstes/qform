

#include "QuadraticForm.h"
#include <objpak.h>

@implementation QuadraticForm

id cltnOfScalars;

+ new
{
  self = [super new];
  if (cltnOfScalars == nil) {
    cltnOfScalars = [OrdCltn new]; 
    [cltnOfScalars add:[BigInt int:1]];
    [cltnOfScalars add:[BigInt int:1]];
    [cltnOfScalars add:[BigInt int:1]];
  }
  matrix = [Matrix diagonal:cltnOfScalars];
  return self;
}

- printOn:(IOD)aFile
{
  [matrix printOn:aFile];
  return self;
}

@end


