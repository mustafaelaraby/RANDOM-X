import manchester.*

man = zeros(100,10);
for i=1:100
    man(i,:) = randi([0 1],10,1);
end
bits = [1 0 0 0 1 0 1 0 1 0];
bitrate = 0.5; % bits per second

 X = zeros(100,2000);

 for i=1:100
    [t,s] = manchester(man(i,:),bitrate);
    X(i,:) = s;
 end

  save("Manchester.mat","X","t");