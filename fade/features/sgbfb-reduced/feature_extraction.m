function features = feature_extraction(signal, fs, uncertainty)
%
% Example GBFB feature extraction
%

fs0 = 16000;

if size(signal,2) > size(signal,1)
  signal = signal.';
end

if fs0 ~= fs
  signal = resample(signal, fs0, fs);
end

if nargin < 3
  uncertainty = 0;
end

if ischar(uncertainty)
  uncertainty = str2double(uncertainty);
end

num_channels = size(signal,2);
features = cell(num_channels,2);

for i=1:num_channels
  log_melspec = log_mel_spectrogram(signal(:,i), fs0);
  if uncertainty > 0
    log_melspec = log_melspec + randn(size(log_melspec)).*uncertainty;
  end
  features{i} = mvn(sgbfb(log_melspec));
end

features = vertcat(features{:});

end
