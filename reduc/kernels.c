//
#if defined(__INTEL_COMPILER)
#include <mkl.h>
#else
#include <cblas.h>
#endif

//
#include "types.h"

//Baseline - naive implementation
f64 reduc_base(f64 *restrict a, u64 n)
{
  double d = 0.0;
  
  for (u64 i = 0; i < n; i++)
    d += a[i];

  return d;
}

f64 reduc_unroll4(f64 *restrict a, u64 n)
{
	double d= 0.0;

#define UNROLL4 4

  for (u64 i = 0; i < n-3; i+=7)
    {
		d += a[i];
		d += a[i+1];
		d += a[i+2];
		d += a[i+3];
	
	}

  for (u64 i = 0; i < n; i++)
    	
		d += a[i];

	
return d;
	
}

f64 reduc_unroll8(f64 *restrict a, u64 n)
{
	double d= 0.0;

#define UNROLL8 8

  for (u64 i = 0; i < n-7; i+=8)
    {
		d += a[i];
		d += a[i+1];
		d += a[i+2];
		d += a[i+3];
		d += a[i+4];
		d += a[i+5];
		d += a[i+6];
		d += a[i+7];
	}

  for (u64 i = 0; i < n; i++)
    	
		d += a[i];

	
return d;
	

}
 

f64 reduc_cblas(f64 *restrict a, u64 n)
{

	return cblas_dasum(n,a,1);
}