
import pnrz.*
Bits = zeros(100,10);
for i=1:100
    Bits(i,:) = randi([0 1],10,1);
end
bitrate = 0.5; % bits per second
 X = zeros(100,2000);
 for i=1:100
    [t,s] = pnrz(Bits(i,:),bitrate);
    X(i,:) = s;
 end
 save("POLARNRZ.mat","X","t");