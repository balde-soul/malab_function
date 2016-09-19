/*
 * MATLAB Compiler: 5.1 (R2014a)
 * Date: Sun Sep 18 10:11:09 2016
 * Arguments: "-B" "macro_default" "-t" "-l" "fft_m.m" 
 */

#ifndef __fft_m_h
#define __fft_m_h 1

#if defined(__cplusplus) && !defined(mclmcrrt_h) && defined(__linux__)
#  pragma implementation "mclmcrrt.h"
#endif
#include "mclmcrrt.h"
#ifdef __cplusplus
extern "C" {
#endif

#if defined(__SUNPRO_CC)
/* Solaris shared libraries use __global, rather than mapfiles
 * to define the API exported from a shared library. __global is
 * only necessary when building the library -- files including
 * this header file to use the library do not need the __global
 * declaration; hence the EXPORTING_<library> logic.
 */

#ifdef EXPORTING_fft_m
#define PUBLIC_fft_m_C_API __global
#else
#define PUBLIC_fft_m_C_API /* No import statement needed. */
#endif

#define LIB_fft_m_C_API PUBLIC_fft_m_C_API

#elif defined(_HPUX_SOURCE)

#ifdef EXPORTING_fft_m
#define PUBLIC_fft_m_C_API __declspec(dllexport)
#else
#define PUBLIC_fft_m_C_API __declspec(dllimport)
#endif

#define LIB_fft_m_C_API PUBLIC_fft_m_C_API


#else

#define LIB_fft_m_C_API

#endif

/* This symbol is defined in shared libraries. Define it here
 * (to nothing) in case this isn't a shared library. 
 */
#ifndef LIB_fft_m_C_API 
#define LIB_fft_m_C_API /* No special import/export declaration */
#endif

extern LIB_fft_m_C_API 
bool MW_CALL_CONV fft_mInitializeWithHandlers(
       mclOutputHandlerFcn error_handler, 
       mclOutputHandlerFcn print_handler);

extern LIB_fft_m_C_API 
bool MW_CALL_CONV fft_mInitialize(void);

extern LIB_fft_m_C_API 
void MW_CALL_CONV fft_mTerminate(void);



extern LIB_fft_m_C_API 
void MW_CALL_CONV fft_mPrintStackTrace(void);

extern LIB_fft_m_C_API 
bool MW_CALL_CONV mlxFft_m(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[]);



extern LIB_fft_m_C_API bool MW_CALL_CONV mlfFft_m(int nargout, mxArray** B, mxArray** C, mxArray** D, mxArray* A);

#ifdef __cplusplus
}
#endif
#endif
