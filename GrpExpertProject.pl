% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

menu:-
	write('Hi! I am Laurel, a Laptop Diagnosis System.'),nl,
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
	write('Describe the beep you heard'),nl,
	write('for one short beep'),nl,
	write('reply a'),nl,
	write('for one short beep and one long beep'),nl,
	write('reply b'),nl,
	write('for two short beeps and one long beep'),nl,
	write('reply c'),nl,
	write('for three short beeps and one long beep'),nl,
	write('reply d'),nl,
	write('Reply with "e" if beep description is not listed'),nl,
	read(Ans),
	beep_type(Ans).

beep_type(a):-
	write('Your laptop cannot detect the CD Drive'),nl,
	assert(beep_type).

beep_type(b):-
	write('The RAM of your laptop is damaged or not properly placed'),nl,
	assert(beep_type).

beep_type(c):-
	write('Video card not installed, Get a Video Card'),nl,
	assert(beep_type).

beep_type(d):-
	write('The installed CPU type is not compatible'),
	assert(beep_type).

beep_type(e):-
	blink_once(Ans).


blink_once(y):-
	write('Your CPU is not functional'),nl,
	end.

blink_once(n):-
	write('Did your laptop appear to start up but you caps lock led blinks twice?'),
	read(Ans),
	blink_twice(Ans).

blink_twice(y):-
	write('BIOS corruption failure'),
	end.

blink_twice(n):-
	write('Or maybe it tried to start up but your caps lock blinks three times?'),
	read(Ans),
	blink_three_times(Ans).

blink_three_times(y):-
	write('Memory, module error not functional'),nl,
	end.

blink_three_times(n):-
	write('Was it four times then?'),
	read(Ans),
	blink_four_times(Ans).

blink_four_times(y):-
	write('Your graphics controller is not functional'),
	end.

blink_four_times(n):-
	write('One more question on blinking, did your caps lock indicator blink five times instead?'),
	read(Ans),
	blink_five_times(Ans).

blink_five_times(y):-
	write('You might want to sit down for this one'),nl,
	write('So the issue is with your Motherboard. She has failed'),nl,
	end.

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
	write('RAM or mother board failure!'),
	nl,end.

blink_5_beep_5(n):-
	write('Was it 6 times apiece?'),
	read(Ans),
	blink_6_beep_6(Ans).

blink_6_beep_6(y):-
	write('Video or graphics card might be faulty'),nl,
	end.

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
	write('Did your laptop boot normally?'),
	read(Ans),
	normal_boot(Ans).

normal_boot(y):-
	write('Thank goodness'),nl,
	end.

normal_boot(n):-
	write('Did your laptop crash before your OS loaded?'),
	read(Ans),
	assert(normal_boot(n)),
	os_corrupt(Ans).

os_corrupt(y):-
	write('Am so sorry, your os i has crashed'),nl,
	write('You have to reload the OS'),nl,
	end.

os_corrupt(n):-
	write('Your computer seems to be working fine'),nl,
	end.

power_indicator(y):-
	write('Leave plugged for a few minutes, then unplug it and try to put the laptop on.'),nl,
	write('Did it come on?'),nl,
	read(An),
	assert(power_indicator(y)),
	battery_status(An).

power_indicator(n):-
	write('Test your charger with another laptop'),nl,
	write('Did it charge the other laptop?'),nl,
	read(A),
	assert(power_indicator(n)),
	charge_other(A).


charge_other(y):-
	write('The power connector of your laptop is bad, Please change it'),nl,
	end.

charge_other(n):-
	write('Your laptop charger is bad, please change it.'),nl,
	end.

battery_status(n):-
	write('Your battery is bad, Please replace it'),nl,
	end.

battery_status(y):-
	write('Your battery was low, fully charge it.'),nl,
	laptop_on(y),nl,
	end.
end:-
	write('Thanks for consulting Laurel. Have a nice day').
