
#include <assert.h>
#include "QuadraticForm.h"
#include <objpak.h>

@implementation QuadraticForm

+ new
{
  return [self notImplemented];
}

+ diagonal:cltnOfScalars
{
  self = [super new];
  assert(cltnOfScalars != nil && [cltnOfScalars size] > 0);
  matrix = [Matrix diagonal:cltnOfScalars];
  return self;
}

- evaluateAll:cltnOfScalars
{
  int n;
  id v,w,product;

  n = [cltnOfScalars size];

  assert(matrix != nil && n == [matrix numRows] && n != 0);
  
  v = [Vector scalarZero:[[cltnOfScalars lastElement] zero] numScalars:n];
  while (n--) {
    [v placeScalar:[cltnOfScalars at:n] at:n];
  }

  w = [v deepCopy];
  
  product = [matrix multiplyVector:w];
  
  return [v dotMultiply:product];
}

- determinant
{
  return [matrix determinant];
}

- printOn:(IOD)aFile
{
  [matrix printOn:aFile];
  return self;
}

@end

