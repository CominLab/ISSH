################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Spaced/SpacedQmer.cpp 

OBJS += \
./src/Spaced/SpacedQmer.o 

CPP_DEPS += \
./src/Spaced/SpacedQmer.d 


# Each subdirectory must supply rules for building sources it contributes
src/Spaced/%.o: ../src/Spaced/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


