%define DOCSTR
"The `Distribution` module gathers all distributions available in the SHOGUN toolkit."
%enddef

%module(docstring=DOCSTR,directors="1") Distribution
%{
 #include "distributions/Distribution.h" 
%}
%feature("director") CDistribution;
%rename(Distribution) CDistribution;
%feature("autodoc","1");

#ifdef USE_DOXYGEN
%include "distributions/Distribution_doxygen.i"
#endif


%include "lib/common.i"
%include "lib/ShogunException.i"
%include "lib/io.i" 
%include "base/Version.i"
%include "base/Parallel.i"
%include "base/SGObject.i"
%include "distributions/Distribution.h" 
%include "distributions/histogram/Histogram.i"
%include "distributions/hmm/HMM.i"
%include "distributions/hmm/GHMM.i"
%include "distributions/hmm/LinearHMM.i"
