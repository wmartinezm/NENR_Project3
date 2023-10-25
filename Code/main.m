%% Connect the stim box

[rt,t]=ctrlArduinoStim_hrc('init');
%% run stim

amp=1;%mA
pw=200;%us
freq=30;%Hz
[rt,t]=ctrlArduinoStim_hrc('stim',[amp,pw,freq,1])

%% Experiment section

% Define the experiment parameters
current_threshold = 1; % mA (replace with actual current threshold)
multiplier = 1.5;
participants = 3;

% Define the range of pulse widths and frequencies to test
pulse_widths = 50:50:250; % microseconds
pulse_frequencies = 30:30:240; % Hz

% Initialize data storage
results = zeros(length(pulse_widths), length(pulse_frequencies), participants);

% Loop through participants
for participant = 1:participants
    % Determine the current level for this participant
    current_level = current_threshold + multiplier * current_threshold;
    
    % Loop through pulse widths
    for pw_index = 1:length(pulse_widths)
        pw = pulse_widths(pw_index);
        
        % Loop through pulse frequencies
        for freq_index = 1:length(pulse_frequencies)
            freq = pulse_frequencies(freq_index);
            
            % Run stimulation
            ctrlArduinoStim_hrc('stim', [current_level, pw, freq]);
            
            % Add a delay for stimulation duration
            pause(stimulation_duration);
            
            % Stop the stimulation
            ctrlArduinoStim_hrc('stim');
            
            % Prompt the participant to report perceived magnitude using user input
            prompt = sprintf('Participant %d: Please report the perceived magnitude for this test: ', participant);
            reported_magnitude = input(prompt);
            
            % Store the reported magnitude in the results matrix
            % Replace 'reported_magnitude' with the actual value recorded
            results(pw_index, freq_index, participant) = reported_magnitude;
            
            % Wait for the inter-trial interval
            pause(inter_trial_interval);
        end
    end
end

% Perform data analysis and visualization as needed
% Analyze the 'results' matrix to study the effect of pulse width and pulse frequency on perceived magnitude



%%
ctrlArduinoStim_hrc('stim');
%% close connection
ctrlArduinoStim_hrc('close');