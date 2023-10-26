%% Connect the stim box

[rt,t]=ctrlArduinoStim_hrc('init');
%% run stim

amp=1;%mA
pw=200;%us
freq=30;%Hz
[rt,t]=ctrlArduinoStim_hrc('stim',[amp,pw,freq,1])

%% Experiment section Initialization

% Define the experiment parameters
current_threshold = 1; % mA (replace with actual current threshold)
multiplier = 1.5;
current_level = current_threshold + multiplier * current_threshold;

% Define the range of pulse widths and frequencies to test
pulse_widths = 50:50:250; % microseconds
pulse_frequencies = 30:30:240; % Hz

participants = 1;
stimulation_duration = 1;

% Initialize data storage
results_pw = zeros(length(pulse_widths), participants);
results_freq = zeros(length(pulse_frequencies), participants);
%% Test_1 PW = 50 us, f= 30 Hz
pw_index = 1;
pw = pulse_widths(pw_index);
freq = pulse_frequencies(1);
% Run stimulation
ctrlArduinoStim_hrc('stim', [current_level, pw, freq, 1]);

% Add a delay for stimulation duration
pause(stimulation_duration);

% Stop the stimulation
ctrlArduinoStim_hrc('stim');
% Prompt the participant to report perceived magnitude using user input
prompt = sprintf('Please report the perceived magnitude for this test from 1 to 5(1 being mild and 5 strong perception):');
reported_magnitude = input(prompt);

% Store the reported magnitude in the results array
results_pw(pw_index, participants) = reported_magnitude;

%% Test_2 PW = 100 us, f= 30 Hz
pw_index = 2;
pw = pulse_widths(pw_index);
freq = pulse_frequencies(1);
% Run stimulation
ctrlArduinoStim_hrc('stim', [current_level, pw, freq, 1]);

% Add a delay for stimulation duration
pause(stimulation_duration);

% Stop the stimulation
ctrlArduinoStim_hrc('stim');
% Prompt the participant to report perceived magnitude using user input
prompt = sprintf('Please report the perceived magnitude for this test from 1 to 5(1 being mild and 5 strong perception):');
reported_magnitude = input(prompt);

% Store the reported magnitude in the results array
results_pw(pw_index, participants) = reported_magnitude;

%% Test_3 PW = 150 us, f= 30 Hz
pw_index = 3;
pw = pulse_widths(pw_index);
freq = pulse_frequencies(1);
% Run stimulation
ctrlArduinoStim_hrc('stim', [current_level, pw, freq, 1]);

% Add a delay for stimulation duration
pause(stimulation_duration);

% Stop the stimulation
ctrlArduinoStim_hrc('stim');
% Prompt the participant to report perceived magnitude using user input
prompt = sprintf('Please report the perceived magnitude for this test from 1 to 5(1 being mild and 5 strong perception):');
reported_magnitude = input(prompt);

% Store the reported magnitude in the results array
results_pw(pw_index, participants) = reported_magnitude;

%% Test_4 PW = 200 us, f= 30 Hz
pw_index = 4;
pw = pulse_widths(pw_index);
freq = pulse_frequencies(1);
% Run stimulation
ctrlArduinoStim_hrc('stim', [current_level, pw, freq, 1]);

% Add a delay for stimulation duration
pause(stimulation_duration);

% Stop the stimulation
ctrlArduinoStim_hrc('stim');
% Prompt the participant to report perceived magnitude using user input
prompt = sprintf('Please report the perceived magnitude for this test from 1 to 5(1 being mild and 5 strong perception):');
reported_magnitude = input(prompt);

% Store the reported magnitude in the results array
results_pw(pw_index, participants) = reported_magnitude;

%% Test_5 PW = 250 us, f= 30 Hz
pw_index = 5;
pw = pulse_widths(pw_index);
freq = pulse_frequencies(1);
% Run stimulation
ctrlArduinoStim_hrc('stim', [current_level, pw, freq, 1]);

% Add a delay for stimulation duration
pause(stimulation_duration);

% Stop the stimulation
ctrlArduinoStim_hrc('stim');
% Prompt the participant to report perceived magnitude using user input
prompt = sprintf('Please report the perceived magnitude for this test from 1 to 5(1 being mild and 5 strong perception):');
reported_magnitude = input(prompt);

% Store the reported magnitude in the results array
results_pw(pw_index, participants) = reported_magnitude;

%% Test_6 PW = 200 us, f= 30 Hz
pw_index = 4;
freq_index = 1;
pw = pulse_widths(pw_index);
freq = pulse_frequencies(freq_index);
% Run stimulation
ctrlArduinoStim_hrc('stim', [current_level, pw, freq, 1]);

% Add a delay for stimulation duration
pause(stimulation_duration);

% Stop the stimulation
ctrlArduinoStim_hrc('stim');
% Prompt the participant to report perceived magnitude using user input
prompt = sprintf('Please report the perceived magnitude for this test from 1 to 5(1 being mild and 5 strong perception):');
reported_magnitude = input(prompt);

% Store the reported magnitude in the results array
results_freq(freq_index, participants) = reported_magnitude;

%% Test_7 PW = 200 us, f= 60 Hz
pw_index = 4;
freq_index = 2;
pw = pulse_widths(pw_index);
freq = pulse_frequencies(freq_index);
% Run stimulation
ctrlArduinoStim_hrc('stim', [current_level, pw, freq, 1]);

% Add a delay for stimulation duration
pause(stimulation_duration);

% Stop the stimulation
ctrlArduinoStim_hrc('stim');
% Prompt the participant to report perceived magnitude using user input
prompt = sprintf('Please report the perceived magnitude for this test from 1 to 5(1 being mild and 5 strong perception):');
reported_magnitude = input(prompt);

% Store the reported magnitude in the results array
results_freq(freq_index, participants) = reported_magnitude;

%% Test_8 PW = 200 us, f= 90 Hz
pw_index = 4;
freq_index = 3;
pw = pulse_widths(pw_index);
freq = pulse_frequencies(freq_index);
% Run stimulation
ctrlArduinoStim_hrc('stim', [current_level, pw, freq, 1]);

% Add a delay for stimulation duration
pause(stimulation_duration);

% Stop the stimulation
ctrlArduinoStim_hrc('stim');
% Prompt the participant to report perceived magnitude using user input
prompt = sprintf('Please report the perceived magnitude for this test from 1 to 5(1 being mild and 5 strong perception):');
reported_magnitude = input(prompt);

% Store the reported magnitude in the results array
results_freq(freq_index, participants) = reported_magnitude;

%% Test_9 PW = 200 us, f= 120 Hz
pw_index = 4;
freq_index = 4;
pw = pulse_widths(pw_index);
freq = pulse_frequencies(freq_index);
% Run stimulation
ctrlArduinoStim_hrc('stim', [current_level, pw, freq, 1]);

% Add a delay for stimulation duration
pause(stimulation_duration);

% Stop the stimulation
ctrlArduinoStim_hrc('stim');
% Prompt the participant to report perceived magnitude using user input
prompt = sprintf('Please report the perceived magnitude for this test from 1 to 5(1 being mild and 5 strong perception):');
reported_magnitude = input(prompt);

% Store the reported magnitude in the results array
results_freq(freq_index, participants) = reported_magnitude;

%% Test_10 PW = 200 us, f= 150 Hz
pw_index = 4;
freq_index = 5;
pw = pulse_widths(pw_index);
freq = pulse_frequencies(freq_index);
% Run stimulation
ctrlArduinoStim_hrc('stim', [current_level, pw, freq, 1]);

% Add a delay for stimulation duration
pause(stimulation_duration);

% Stop the stimulation
ctrlArduinoStim_hrc('stim');
% Prompt the participant to report perceived magnitude using user input
prompt = sprintf('Please report the perceived magnitude for this test from 1 to 5(1 being mild and 5 strong perception):');
reported_magnitude = input(prompt);

% Store the reported magnitude in the results array
results_freq(freq_index, participants) = reported_magnitude;

%% Test_11 PW = 200 us, f= 180 Hz
pw_index = 4;
freq_index = 6;
pw = pulse_widths(pw_index);
freq = pulse_frequencies(freq_index);
% Run stimulation
ctrlArduinoStim_hrc('stim', [current_level, pw, freq, 1]);

% Add a delay for stimulation duration
pause(stimulation_duration);

% Stop the stimulation
ctrlArduinoStim_hrc('stim');
% Prompt the participant to report perceived magnitude using user input
prompt = sprintf('Please report the perceived magnitude for this test from 1 to 5(1 being mild and 5 strong perception):');
reported_magnitude = input(prompt);

% Store the reported magnitude in the results array
results_freq(freq_index, participants) = reported_magnitude;
%% Test_12 PW = 200 us, f= 210 Hz
pw_index = 4;
freq_index = 7;
pw = pulse_widths(pw_index);
freq = pulse_frequencies(freq_index);
% Run stimulation
ctrlArduinoStim_hrc('stim', [current_level, pw, freq, 1]);

% Add a delay for stimulation duration
pause(stimulation_duration);

% Stop the stimulation
ctrlArduinoStim_hrc('stim');
% Prompt the participant to report perceived magnitude using user input
prompt = sprintf('Please report the perceived magnitude for this test from 1 to 5(1 being mild and 5 strong perception):');
reported_magnitude = input(prompt);

% Store the reported magnitude in the results array
results_freq(freq_index, participants) = reported_magnitude;

%% Test_13 PW = 200 us, f= 240 Hz
pw_index = 4;
freq_index = 8;
pw = pulse_widths(pw_index);
freq = pulse_frequencies(freq_index);
% Run stimulation
ctrlArduinoStim_hrc('stim', [current_level, pw, freq, 1]);

% Add a delay for stimulation duration
pause(stimulation_duration);

% Stop the stimulation
ctrlArduinoStim_hrc('stim');
% Prompt the participant to report perceived magnitude using user input
prompt = sprintf('Please report the perceived magnitude for this test from 1 to 5(1 being mild and 5 strong perception):');
reported_magnitude = input(prompt);

% Store the reported magnitude in the results array
results_freq(freq_index, participants) = reported_magnitude;

%% close connection
ctrlArduinoStim_hrc('close');