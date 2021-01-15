################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Input/FileScan.cpp \
../src/Input/Input.cpp \
../src/Input/Sequence.cpp 

OBJS += \
./src/Input/FileScan.o \
./src/Input/Input.o \
./src/Input/Sequence.o 

CPP_DEPS += \
./src/Input/FileScan.d \
./src/Input/Input.d \
./src/Input/Sequence.d 


# Each subdirectory must supply rules for building sources it contributes
src/Input/%.o: ../src/Input/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


