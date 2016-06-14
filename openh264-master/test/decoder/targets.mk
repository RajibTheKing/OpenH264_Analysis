DECODER_UNITTEST_SRCDIR=test/decoder
DECODER_UNITTEST_CPP_SRCS=\
	$(DECODER_UNITTEST_SRCDIR)/DecUT_Deblock.cpp\
	$(DECODER_UNITTEST_SRCDIR)/DecUT_DeblockCommon.cpp\
	$(DECODER_UNITTEST_SRCDIR)/DecUT_DecExt.cpp\
	$(DECODER_UNITTEST_SRCDIR)/DecUT_ErrorConcealment.cpp\
	$(DECODER_UNITTEST_SRCDIR)/DecUT_IdctResAddPred.cpp\
	$(DECODER_UNITTEST_SRCDIR)/DecUT_IntraPrediction.cpp\
	$(DECODER_UNITTEST_SRCDIR)/DecUT_ParseSyntax.cpp\
	$(DECODER_UNITTEST_SRCDIR)/DecUT_PredMv.cpp\

DECODER_UNITTEST_OBJS += $(DECODER_UNITTEST_CPP_SRCS:.cpp=.$(OBJ))

OBJS += $(DECODER_UNITTEST_OBJS)

$(DECODER_UNITTEST_SRCDIR)/%.$(OBJ): $(DECODER_UNITTEST_SRCDIR)/%.cpp
	$(QUIET_CXX)$(CXX) $(CFLAGS) $(CXXFLAGS) $(INCLUDES) $(DECODER_UNITTEST_CFLAGS) $(DECODER_UNITTEST_INCLUDES) -c $(CXX_O) $<

