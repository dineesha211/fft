% Read the audio file
[audio_signal, Fs] = audioread('/home/rguktrkvalley/Downloads/dsp.mp3');  % Replace with your audio file name

% Define the window size for the moving average filter
window_size = 5; % Adjust window size as needed

% Apply the moving average filter
filtered_audio = movmean(audio_signal, window_size);

% Plot the original and filtered audio signals
t = (0:length(audio_signal)-1) / Fs; % Time vector for plotting

figure;
subplot(2,1,1);
plot(t, audio_signal);
title('Original Audio Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,1,2);
plot(t, filtered_audio);
title('Filtered Audio Signal (Moving Average)');
xlabel('Time (s)');
ylabel('Amplitude');

% Save the filtered audio to a new file
audiowrite('filtered_audio.wav', filtered_audio, Fs);  % Save the filtered audio

% Play the original and filtered audio (optional)
sound(audio_signal, Fs);       % Play original audio
pause(length(audio_signal)/Fs); % Wait for the original audio to finish
sound(filtered_audio, Fs);      % Play filtered audio