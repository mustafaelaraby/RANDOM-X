function [t,x] = pnrz(bits, bitrate)
    T = length(bits)/bitrate; % full time of bit sequence
    n = 200;
    N = n*length(bits);
    dt = T/N;
    t = 0:dt:(T-dt);
    x = zeros(1,length(t)); % output signal
    for i = 0:length(bits)-1
      if bits(i+1) == 1
        x(i*n+1:(i+0.5)*n) = 5;
        x((i+0.5)*n+1:(i+1)*n) = 5;
      else
        x(i*n+1:(i+0.5)*n) = -5;
        x((i+0.5)*n+1:(i+1)*n) = -5;
      end
end