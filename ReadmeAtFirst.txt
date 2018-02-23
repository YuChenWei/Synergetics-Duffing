	The archive contains the file for simulation the overdamped
Duffing system. Our goal is to find some relationship about the 
signal and noise to the nonlinear system. 
-------------------------------------------------------------------
mat files list :
+	DE2.m
+	EstimatedResiduateTime.m
+	GetPeriodicTrend.m
+	GetPeriodicZeroCrossing.m
+	GetTrend.m
+	GetZeroCrossing.m
+	InputSignal.m
+	OverdampedResponseLooping.m
+	PlotEnsemble.m
+	PlotTrend.m
+	RenameFile.m
+	RK4.m
-------------------------------------------------------------------
	Here is the goal and function of each mat file.
@	DE2.m :
	It is a function file.
	This the modified overdamped Duffing system.
	Need to notice that if we change the system parameters 
	likes 'a'and 'b' in the main function. We need to change 
	here also.

	Meaning of parameters
	ti	:	time index
	wi	:	previous state
	Input	:	input signal
@	EstimatedResiduateTime.m	:
	It is a function file.
	The function is for getting the zero-crossing times
	It isn't recommend for using the "ResT" parameter.

	Meaning of parameters
	+	Input   :   signal want to know the zero-crossing times.
	+	c   :   stable equilibrium point
	+	Scale   :   threhold scale
	+	Output    : signal after hrehold 
	+	ZeroCross   :   zero crossing times
@	GetPeriodicTrend.m	:
	It is a main file.
	This file is to get the zero-cross trend in a period.
@	GetPerioidicZeroCrossing.m	:
	It is a main file.
	This file is get the zero crossing number of a time 
	sequence in a period. It use the "EstimateResiduateTime" 
	function to get the zero cross times. Typically, it is not
	recommend to use the 'ResT' parameter for stochastic 
	process. The "EstimateResiduateTime" can be either 
	threhold or nonthrehold.
@	GetTrend.m	:
	It is a main file.
	This file is to get the zero-cross trend for all time 
	sequences.
@	GetZeroCrossing.m	:
	This is a main file.
	This file is get the zero crossing number of a time 
	sequence for all time. It use the "EstimateResiduateTime" 
	function to get the zero cross times. Typically, it is not
	recommend to use the 'ResT' parameter for stochastic 
	process. The "EstimateResiduateTime" can be either 
	threhold or nonthrehold.
@	InputSignal.m	:
	It is a function file.
	The function is to generating the input signal.

	Meaning of parameters
	+	A   :   This is the maginitude of the signal.
	+	f0  :   This is frequency of the signal and 
			its unit is "Hz".
	+	D   :   This is the half noise intensity.
	+	T   :   This is the total simulation time.
	+	Monte   :   This is Monte Caro runs.
@	OverdampedResponseLooping.m	:
	It is a main file.
	This is the main function for simulation the overdamped
	system.
@	PlotEnsemble.m	:
	It is a main file.
	This file is plotting the ensemble mean of response.
@	PlotTrend.m	:
	It is a main file.
@	RenameFile.m	:
	It is a main file.
	This file is to raname file for other applications. 
-----------------------------------------------------------------
How to use the archive materials?
	1.	Using the "OverdampedResponseLooping.m" at first, 
		one should be check the response will reach 
		cyclo-stationary.
		*	Notice	:	
			One can use the ode45 to replace the RK4.
	2.	Using the "RenameFile.m" to normalize the file name.
	3.	Using 
		+	GetPerioidicZeroCrossing.m
		+	GetZeroCrossing.m
		to get the zero-crossing times.
	4.	Using 
		+	GetPeriodicTrend.m
		+	GetTrend.m
		to get trend.
	5.	Using 
		+	PlotEnsemble.m
		+	PlotTrend.m
	