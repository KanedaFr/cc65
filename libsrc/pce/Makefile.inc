# remove cc65 files to use the one in extras/
OBJS := $(filter-out ../libwrk/$(TARGET)/call.o, $(OBJS))
DEPS := $(filter-out ../libwrk/$(TARGET)/call.d, $(DEPS))
