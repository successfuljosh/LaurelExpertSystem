% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

start:-
	write('Hi! I am Ania, your PC diagnosis sytem.'),nl,
	write('Type y for yes and n for no when asked a question.'),nl,
	write('Is your Laptop coming on?'),nl,
	read(Answer),
	laptop_on(Answer).

laptop_on(y):-
	write('Do you hear a beep sound?'),nl,
	read(Answer),
	beeping(Answer),
	assert(laptop_on).

laptop_on(n):-
	write('Please Plug in your Laptop to a power supply.'),nl,
	write('Did the power indicator come on?'),nl,
	read(An),
	power_indicator(An).

beeping(n):-
	write('Does it appear to start up but your caps lock led blinks once?'),
	read(Ans),
	blink_once(Ans).

beeping(y):-
	write('Did you hear one beeping sound?'),nl,
	read(Ans),
	one_beep(Ans).

one_beep(y):-
	write('Was there a long beep after the short beep?'),nl,
	read(Reply),
	long_beep(Reply).

one_beep(n):-
	write('Were there two beep sounds?'),nl,
	read(Answer),
	two_beeps(Answer).

long_beep(y):-
	write('MEMORY PROBLEM!').

long_beep(n):-
	write('CD DRIVE NOT DETECTED!').

two_beeps(y):-
	write('Was there a long beep too?'),nl,
	read(Reply),
	twob_long(Reply).

blink_once(y):-
	write('Your CPU is not functional').

blink_once(n):-
	write('Did your laptop appear to start up but you caps lock led blinks twice?'),
	read(Ans),
	blink_twice(Ans).

blink_twice(y):-
	write('BIOS corruption failure').

blink_twice(n):-
	write('Or maybe it tried to start up but your caps lock blinks three times?'),
	read(Ans),
	blink_three_times(Ans).

blink_three_times(y):-
	write('Memory, module error not functional').

blink_three_times(n):-
	write('Was it four times then?'),
	read(Ans),
	blink_four_times(Ans).

blink_four_times(y):-
	write('It is your graphics controller. It might have malfunctioned').

blink_four_times(n):-
	write('One more question on blinking, did your caps lock indicator blink five times instead?'),
	read(Ans),
	blink_five_times(Ans).

blink_five_times(y):-
	write('You might want to sit down for this one'),nl,
	write('So the issue is with your Motherboard. She might have failed').

blink_five_times(n):-
	write('Maybe it is the power button LED'),nl,
	write('Did it blink then attempts to power on but failed?'),
	read(Ans),
	power_blink(Ans).

power_blink(y):-
	write('Check your hard disk or RAM card'),nl,
	write('They may have dislodged').

power_blink(n):-
	write('Hmmmmm'),nl,
	write('Did it blink 5 times while beeping 5 times too?'),
	read(Ans),
	blink_5_beep_5(Ans).

blink_5_beep_5(y):-
	write('RAM or mother board failure!').

blink_5_beep_5(n):-
	write('Was it 6 times apiece?'),
	read(Ans),
	blink_6_beep_6(Ans).

blink_6_beep_6(y):-
	write('Video or graphics card might be faulty').

blink_6_beep_6(n):-
	write('Seven?'),
	read(Ans),
	blink_7_beep_7(Ans).

blink_7_beep_7(y):-
	write('Motherboard failure').

blink_7_beep_7(n):-
	write('Eight maybe?'),
	read(Ans),
	blink_8_beep_8(Ans).

blink_8_beep_8(y):-
	write('BIOS or CMOS problem'),nl,
	write('Perform BIOS recovery with external media').

blink_8_beep_8(n):-
	write('Then your laptop booted normally?'),
	read(Ans),
	normal_boot(Ans).

normal_boot(y):-
	write('Thank goodness'),nl,
	write('Hope your computer did not crash before your OS loaded?'),
	read(Ans),
	os_corrupt(Ans).

normal_boot(n):-
	write('Well this is akward, I dont seem to have any suggestions left'),
	write('Can you tell me what the seems to be the issue?'),
	read(Ans),
	assert(Ans).

power_indicator(y):-
	write('Leave plugged for a few minutes, then unplug it and try to put the laptop on.'),nl,
	write('Did it come on?'),nl,
	read(An),
	battery_status(An).

power_indicator(n):-
	write('Test your charger with another laptop'),nl,
	write('Did it charge the other laptop?'),nl,
	read(A),
	charge_other(A).

charge_other(y):-
	write('The power connector of your laptop is bad, Please change it').

charge_other(n):-
	write('Your laptop charger is bad, please change it.'),nl.

battery_status(n):-
	write('Your battery is bad, Please replace it'),
	assert(battery_status).

battery_status(y):-
	write('Your battery was low'),nl,
	laptop_on(y),
	assert('battery_status').
