
#include <cakit.h>

@interface QuadraticForm: CAObject
{
  id matrix;
}

+ new;
+ diagonal:clntOfScalars;

- evaluateAll:clntOfScalars;

- determinant;
- printOn:(IOD)aFile;

@end

