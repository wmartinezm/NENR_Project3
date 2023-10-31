%% Since the data is not normally distributed, use box plots to show the median +/- IQR.
% Data for perceived intensity
n = 5; % Number of intensity levels
participants = 3;
pulse_widths = 50:50:250; % Microseconds
pulse_frequencies = 30:30:240; % Hz

% Matrix of perceived intensity data due to PW
perceived_intensity_pw = [1, 1, 1; 1, 1, 2; 2, 2, 2; 3, 3, 2; 3, 3, 2];
perceived_intensity_pw = perceived_intensity_pw / n; % Normalize
linefit_pw = zeros(5,participants);

% Plot Part 1: Perceived magnitude as a function of pulse width
figure;
subplot(2, 1, 1);
if isequal(size(perceived_intensity_pw), [length(pulse_widths), participants])
    % Calculate the median and IQR for each category
    medians_pw = median(perceived_intensity_pw, 2);
    lower_quartile_pw = quantile(perceived_intensity_pw, 0.25, 2);
    upper_quartile_pw = quantile(perceived_intensity_pw, 0.75, 2);
    IQR_pw = upper_quartile_pw - lower_quartile_pw;
    scatter(pulse_widths, medians_pw, 'r', 'filled', 'MarkerEdgeColor', 'k', 'LineWidth', 3);
    errorbar(pulse_widths, medians_pw, lower_quartile_pw - medians_pw, upper_quartile_pw - medians_pw, '-o');
    title('Perceived Magnitude vs. Pulse Width');
    xlabel('Pulse Width (μs)');
    ylabel('Normalized Perceived Magnitude');
    % Add a line of best fit for each participant
    hold on;
    for i = 1:participants
        p = polyfit(pulse_widths, perceived_intensity_pw(:, i), 1);
        % linefit = polyval(p, pulse_widths);
        linefit_pw(:,i) = polyval(p, pulse_widths);
        plot(pulse_widths, linefit_pw(:,i), '--', 'LineWidth', 1.5);
    end
    legend('Median Perceived Magnitude', 'Participant 1 Fit', 'Participant 2 Fit', 'Participant 3 Fit');
    hold off;
else
    % boxplot(perceived_intensity_pw, 'Labels', pulse_widths);
    boxplot(perceived_intensity_pw, 'Labels', pulse_widths, 'Colors', 'b','PlotStyle', 'compact');
    title('Perceived Magnitude vs. Pulse Width (Boxplot)');
    xlabel('Pulse Width (μs)');
    ylabel('Normalized Perceived Magnitude');
end

% Matrix of perceived intensity data due to PF
perceived_intensity_pf = [2, 2, 2; 3, 2, 1; 4, 3, 1; 4, 3, 1; 3, 3, 1; 5, 3, 1; 5, 4, 2; 5, 3, 1];
perceived_intensity_pf = perceived_intensity_pf / n; % Normalize
linefit_pf = zeros(8,participants);

% Plot Part 2: Perceived magnitude as a function of pulse frequency
subplot(2, 1, 2);
if isequal(size(perceived_intensity_pf), [length(pulse_frequencies), participants])
    % mean_intensity_pf = median(perceived_intensity_pf, 2);
    % std_intensity_pf = std(perceived_intensity_pf, 0, 2);
    % errorbar(pulse_frequencies, mean_intensity_pf, std_intensity_pf, '-o');
    medians_pf = median(perceived_intensity_pf,2);
    lower_quartile_pf = quantile(perceived_intensity_pf, 0.25,2);
    upper_quartile_pf = quantile(perceived_intensity_pf, 0.75,2);
    IQR_pf = upper_quartile_pf - lower_quartile_pf;
    scatter(pulse_frequencies, medians_pf, 'r', 'filled', 'MarkerEdgeColor', 'k', 'LineWidth', 3);
    errorbar(pulse_frequencies, medians_pf, lower_quartile_pf - medians_pf, upper_quartile_pf - medians_pf, '-o');
    title('Perceived Magnitude vs. Pulse Frequency');
    xlabel('Pulse Frequency (Hz)');
    ylabel('Normalized Perceived Magnitude');
    % Add a line of best fit for each participant
    hold on;
    for i = 1:participants
        p = polyfit(pulse_frequencies, perceived_intensity_pf(:, i), 1);
        linefit_pf(:,i) = polyval(p, pulse_frequencies);
        plot(pulse_frequencies, linefit_pf(:,i), '--', 'LineWidth', 1.5);
    end
    
    legend('Median Perceived Magnitude', 'Participant 1 Fit', 'Participant 2 Fit', 'Participant 3 Fit');
    hold off;
else
    % boxplot(perceived_intensity_pf, 'Labels', pulse_frequencies);
    boxplot(perceived_intensity_pf, 'Labels', pulse_frequencies, 'Colors', 'r','PlotStyle', 'compact');
    title('Perceived Magnitude vs. Pulse Frequency (Boxplot)');
    xlabel('Pulse Frequency (Hz)');
    ylabel('Normalized Perceived Magnitude');
end

% Set common titles and labels for both subplots
subtitle('Perceived Intensity');

% Save the figure as Fig4 (you can customize the path)
saveas(gcf, 'Fig4_v1.png');
%% Since the data is not normally distributed, use box plots to show the median +/- IQR.
% Data for perceived intensity
n = 5; % Number of intensity levels
participants = 3;
pulse_widths = 50:50:250; % Microseconds
pulse_frequencies = 30:30:240; % Hz

% Matrix of perceived intensity data due to PW
perceived_intensity_pw = [1, 1, 1; 1, 1, 2; 2, 2, 2; 3, 3, 2; 3, 3, 2];
perceived_intensity_pw = perceived_intensity_pw / n; % Normalize
linefit_pw = zeros(5,participants);

% Plot Part 1: Perceived magnitude as a function of pulse width
figure;
subplot(2, 1, 1);
if isequal(size(perceived_intensity_pw), [length(pulse_widths), participants])
    mean_intensity_pw = median(perceived_intensity_pw, 2);
    std_intensity_pw = std(perceived_intensity_pw, 0, 2);
    errorbar(pulse_widths, mean_intensity_pw, std_intensity_pw, '-o');
    title('Perceived Magnitude vs. Pulse Width');
    xlabel('Pulse Width (μs)');
    ylabel('Normalized Perceived Magnitude');
    % Add a line of best fit for each participant
    hold on;
    for i = 1:participants
        p = polyfit(pulse_widths, perceived_intensity_pw(:, i), 1);
        linefit_pw(:,i) = polyval(p, pulse_widths);
        plot(pulse_widths, linefit_pw(:,i), '--', 'LineWidth', 1.5);
    end
    legend('Median Perceived Magnitude', 'Participant 1 Fit', 'Participant 2 Fit', 'Participant 3 Fit');
    hold off;
else
    % boxplot(perceived_intensity_pw, 'Labels', pulse_widths);
    boxplot(perceived_intensity_pw, 'Labels', pulse_widths, 'Colors', 'b','PlotStyle', 'compact');
    title('Perceived Magnitude vs. Pulse Width (Boxplot)');
    xlabel('Pulse Width (μs)');
    ylabel('Normalized Perceived Magnitude');
end

% Matrix of perceived intensity data due to PF
perceived_intensity_pf = [2, 2, 2; 3, 2, 1; 4, 3, 1; 4, 3, 1; 3, 3, 1; 5, 3, 1; 5, 4, 2; 5, 3, 1];
perceived_intensity_pf = perceived_intensity_pf / n; % Normalize
linefit_pf = zeros(8,participants);

% Plot Part 2: Perceived magnitude as a function of pulse frequency
subplot(2, 1, 2);
if isequal(size(perceived_intensity_pf), [length(pulse_frequencies), participants])
    mean_intensity_pf = median(perceived_intensity_pf, 2);
    std_intensity_pf = std(perceived_intensity_pf, 0, 2);
    errorbar(pulse_frequencies, mean_intensity_pf, std_intensity_pf, '-o');
    title('Perceived Magnitude vs. Pulse Frequency');
    xlabel('Pulse Frequency (Hz)');
    ylabel('Normalized Perceived Magnitude');
    % Add a line of best fit for each participant
    hold on;
    for i = 1:participants
        p = polyfit(pulse_frequencies, perceived_intensity_pf(:, i), 1);
        linefit_pf(:,i) = polyval(p, pulse_frequencies);
        plot(pulse_frequencies, linefit_pf(:,i), '--', 'LineWidth', 1.5);
    end
    
    legend('Median Perceived Magnitude', 'Participant 1 Fit', 'Participant 2 Fit', 'Participant 3 Fit');
    hold off;
else
    % boxplot(perceived_intensity_pf, 'Labels', pulse_frequencies);
    boxplot(perceived_intensity_pf, 'Labels', pulse_frequencies, 'Colors', 'r','PlotStyle', 'compact');
    title('Perceived Magnitude vs. Pulse Frequency (Boxplot)');
    xlabel('Pulse Frequency (Hz)');
    ylabel('Normalized Perceived Magnitude');
end

% Set common titles and labels for both subplots
subtitle('Perceived Intensity');

% Save the figure as Fig4 (you can customize the path)
saveas(gcf, 'Fig4_v2.png');

%% Test for normality PW
% Data
pulse_width = [40, 100, 150, 200, 250];
participant1_intensity = [1, 1, 2, 3, 3];
participant2_intensity = [1, 1, 2, 3, 3];
participant3_intensity = [1, 2, 2, 2, 2];

% Combine the data for all participants
all_participants_intensity = [participant1_intensity; participant2_intensity; participant3_intensity];

% Create a bar plot
bar(pulse_width, all_participants_intensity');

% Add labels and legend
xlabel('Pulse Width (us)');
ylabel('Perceived Intensity');
title('Perceived Intensity vs. Pulse Width');
legend('Participant 1', 'Participant 2', 'Participant 3', 'Location', 'Best');

% Adjust the axis limits if needed
axis([30, 260, 0, 4]);

% Display the grid
grid on;

%% Test for normality PF
% Data
pulse_frequency = [30, 60, 90, 120, 150, 180, 210, 240];
participant1_intensity = [2, 3, 4, 4, 3, 5, 5, 5];
participant2_intensity = [2, 2, 3, 3, 3, 3, 4, 3];
participant3_intensity = [2, 1, 1, 1, 2, 2, 2, 1];

% Combine the data for all participants
all_participants_intensity = [participant1_intensity; participant2_intensity; participant3_intensity];

% Create a bar plot
bar(pulse_frequency, all_participants_intensity');

% Add labels and legend
xlabel('Pulse Frequency (Hz)');
ylabel('Perceived Intensity');
title('Perceived Intensity vs. Pulse Frequency');
legend('Participant 1', 'Participant 2', 'Participant 3', 'Location', 'Best');

% Adjust the axis limits if needed
axis([20, 250, 0, 6]);

% Display the grid
grid on;
