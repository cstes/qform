
#include <cakit.h>

@interface QuadraticForm: CAObject
{
  id matrix;
}

+ new;

- determinant;
- printOn:(IOD)aFile;

@end

