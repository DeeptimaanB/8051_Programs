# 8051_Programs
This Repository contains code from my Microcontroller and its Application class along with some of my own codes.

Lab 1:


Task 1: Write a 8051 asm program to perform –Move operation between A and data –Move operation between Rn and data –Move operation between A and Rn 


Lab 2:


Task 1: Write an 8051 ASM program to perform addition of two 8-bit numbers 
97H and 76H and store the result at address location 55H 

Task 2: Write an 8051 ASM program to perform subtraction of two 8-bit numbers 
76H and 97H and store the result at address location 55H. 

Task 3: Write an 8051 ASM program to perform addition of two 16-bit numbers. 
The numbers are 3CE7H and 3B8DH. Place the sum in R7 and R6; R6 should have the lower byte 

Task 4: Write an 8051 ASM program to perform subtraction of two 16-bit numbers. The numbers are 2762H and 1296H. 
Place the sum in R7 and R6; R6 should have the lower byte. 

Task 5: Write an 8051 ASM program to perform multiplication of two 8-bit numbers present in data memory 
address location 33H & 34H and store the result in 35H (higher byte) & 36H (Lower byte). 

Task 6: Write an 8051 ASM program to perform division on 8-bit numbers present in data memory address location 33H & 34H and 
store the result in 35H (Reminder) & 36H (Quotient). 

C Task 1: Write an 8051 ASM program to solve the following mathematical equation:  
W=(Y+3Z-6X)/6D  
Where D=03H, X=02H, Y=25H and Z=12H 

C Task 2: Write an 8051 ASM program to solve the following mathematical equation:  
(a-b)2 = a2 + b2 – 2ab  
Where “a” & “b” are values at memory location 55H & 56H and store the result in 57H (High byte) & 58H (Low Byte). 


Lab 3:


Task 1: Write a program to clear accumulator [A], then add 5 to the accumulator 20 times. 

Task 2: Write an 8051 ASM program to read a temperature value (T) from RAM 
location 55H. According to the test results, place the temperature value into 
the registers indicated below: 
If T=30H then A=30H 
If T<30H then R1=T 
If T>30H then R2=T

Task 3: Write a program to move a block of FIVE data starting from RAM 
40H to external ROM memory 3000H onwards and perform complement operation before storing to ROM. 

C Task 1: Write an 8051 ASM program to add the first 15 natural numbers. 

C Task 2: Write an 8051 ASM program to move a block of five data using conditional statements from 50H RAM to External 
ROM memory 4000H to do addition and store the result in 5000H (High Byte) and 5001H(Lower Byte). 


Lab 4:


Task 1: Write an assembly language program to perform logical operations AND, OR, XOR on two eight bit numbers stored in internal 
RAM locations 21h, 22h and store their result in the memory location 30h, 31h, 32h respectively. 

Task 2: Write an ALP to compare two eight bit numbers NUM1 and NUM2 stored in external memory 
locations 8000h and 8001h respectively. Reflect your result as: 
If NUM1<NUM2, SET LSB of data RAM location 2FH (bit address 78H). 
If NUM1>NUM2, SET MSB of location 2FH (bit address 7FH). 
If NUM1 = NUM2, then CLR both LSB & MSB of bit addressable memory location 2FH. 

Task 3: Write an 8051 ALP to implement a half adder logic such that P0.0 (B) 
and P0.1 (A) be two inputs while P2.0 (carry) and P2.1 (sum) be outputs. 

C Task 1: Write an 8051 ALP to perform a full adder logic. 
Assume P0.2(A), P0.1(B), P0.0(C) as inputs and P1.1 (SUM) and P1.0(Carry) as outputs. 

C Task 2: Write an 8051 ALP to find whether given eight bit number is odd or even. 
If odd store 00h in accumulator. If even store FFh in accumulator.


Lab 5:


Task 1: Write an 8051 assembly language program to toggle all the bits of P0 for every 
200ms. Assume the crystal frequency as 11.0592 MHz

Task 2: Write an 8051 assembly language program to create a square wave of 66% duty cycle on bit 3 of port 1.

Task 3: Write a program to monitor the port pin P0.1 until it becomes high  
(a). when P0.1 becomes high read the data from port 1 to A 
(b). send a low-to-high pulse on p.0.2 to indicate that data has been read 

C Task 1: Write an 8051 assembly language program to toggle all the bits of P0 
for every 0.5 seconds. Assume the crystal frequency as 11.0592 MHz.

C Task 2: Write an 8051 assembly language program to create a square wave of 75% duty cycle on bit 3 of port 1.

C Task 3: A switch is connected to port pin P0.1. Write an 8051 assembly language program to check the status 
of the switch and perform the following 
(i). If switch = 1 send a High to Low pulse to activate a siren connected to port pin P1.7 
(ii). Continue monitoring the pin status 


Lab 6:


Task 1: Write an 8051 assembly language program to toggle all the bits of P1 for every 500ms (0.5 Seconds). 
Assume the crystal frequency as 11.0592 MHz. Verify the output using ESA 8051 Microcontroller kit.

Task 2: Write an 8051 assembly language program to glow the LEDs connected on PORT1 one at a time in a serial fashion (from LSB to MSB) 
continuously with 0.5 seconds delay for each . Verify the output using ESA 8051 Microcontroller kit.

Task 3: Write a program to transfer the data in port 0 serially (one bit at a time) pin P1.0 . Send 
high to low pulse at start and end of the data. Send the byte LSB first. Verify the output using ESA 8051 Microcontroller kit. 

C Task 1: Write an 8051 assembly language program to toggle all the bits of P1 for every 1 Seconds. 
Assume the crystal frequency as 11.0592 MHz. Verify the output using ESA 8051 Microcontroller kit.

C Task 2: Write an 8051 assembly language program to glow the LEDs connected on PORT1 in a serial fashion (from LSB to MSB) 
continuously with 0.5 seconds delay for each . Verify the output using ESA 8051 Microcontroller kit.

C Task 3: Write an 8051 assembly language program to implement a counter that counts from 00 to 99 (decimal). 
Send each count value to port P1 continuously. Verify the output using ESA 8051 Microcontroller kit. 


Lab 7: 


Task 1: Write an 8051 assembly language program using timers to generate a 
frequency of 2kHz on pin port pin P2.7. Assume the crystal frequency as 11.0592 MHz. 

Task 2: Write an 8051 assembly language program to toggle bit of P1.7 for every 1 second. 
Assume the crystal frequency as 33MHz. Verify the output using ESA 8051 microcontroller kit. 

Task 3: Assuming that clock pulses are fed into pin T1 (P3.5). Write an 8051 assembly language program for counter 1 
in mode 2 to count the pulses and display the state of the TL1 count on P1 which connects to 8 LEDs 

C Task 1: Write an 8051 assembly language program using timers to generate 
a frequency of 10kHz on pin port pin P2.7. Assume the crystal frequency as 11.0592 MHz.

C Task 2: Write an 8051 assembly language program using timers to blink the LED connected at P1.7 TON of 0.75 seconds and TOFF of 0.25 seconds. Assume the crystal frequency as 11.0592 MHz. Verify the output using ESA 8051 Microcontroller kit.


Lab 8:


Task 1: Write a program for the 8051 to transfer ‘VIT’ serially to 9600 baud, 8 bit data, 1 stop b it, do this continuously.

Task 2: Write a program for the 8051 to receive bytes of data serially 
and put them in P1, set the baud rate at 4800, 8-bit data and 1 stop bit.

C task 1: Assume a switch is connected to a port pin P1.3. Monitor this port pin continuously, whenever P1.3 is HIGH perform 
the transmission of “Hello” message to the serial port. 
When P1.3 LOW, perform the receive operation on serial port and display it in port P2. 


Lab 9:


Task 1: Write a timer interrupt program that continuously get 8-bit data from P0 and sends it to P1 
while simultaneously creating a square wave of 200 μs period on pin P2.1. Use timer 0 to create the square wave. 
Assume thatXTAL = 11.0592 MHz.

Task 2: Assume that the INT1 pin is connected to a switch that is normally high. 
Whenever it goes low, it should turn on an LED. The LED is connected to P1.3 and is normally off. 
As long as the switch is pressed low, 
the LED should stay on. Simultaneously perform a toggle operation in P1.5 with the delay of 500ms.

C Task 1: To write an ALP for the generation of the square pulse of 50% duty cycle with on time of 10 ms using timer 0 and 
simultaneously send ‘Y’ and ‘N’ to port 0 and port 1 respectively. Assume that XTAL = 11.0592 MHz.

C Task 2: Assume that pin 3.3 (INT1) is connected to a pulse generator, write a program in which the 
falling edge of the pulse will send a high to P1.3, which is connected to a buzzer. In other words, 
the buzzer is turned on and off at the same rate as the pulses are applied to the INT1 pin.


Lab 10:


Task 1: Write an 8051 assembly language program to display the message “VIT” on LCD display

Task 2: Write an 8051 assembly language program to display the message “VIT University” on LCD display using DPTR.

C Task 1: Write an 8051 assembly language program to display the value typed in your computer keypad and display it on LCD via serial port. 

