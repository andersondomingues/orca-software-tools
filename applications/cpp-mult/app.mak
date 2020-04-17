# Do not modify the lines below
APP_CPP_MULT_NAME  := cpp-mult
APP_CPP_MULT_DIR   := ./applications/$(APP_CPP_MULT_NAME)
APP_CPP_MULT_SRC   := $(APP_CPP_MULT_DIR)/src
APP_CPP_MULT_INC   := $(APP_CPP_MULT_DIR)/include
APP_CPP_MULT_LIB   := app-$(APP_CPP_MULT_NAME).a

INC_DIRS += -I$(APP_CPP_MULT_INC)
 
CFLAGS += 

# Update these lines with your source code
APP_CPP_MULT_SRCS := $(wildcard $(APP_CPP_MULT_SRC)/*.c)
APP_CPP_MULT_OBJS :=  $(APP_CPP_MULT_SRCS:.c=.o)

$(APP_CPP_MULT_LIB) : $(APP_CPP_MULT_OBJS)
	$(Q)$(AR) rcs $(APP_CPP_MULT_LIB) $(APP_CPP_MULT_OBJS) 
