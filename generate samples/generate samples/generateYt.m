t = 0:0.02:2;
x=-5:0.1:4.9;
Beta = normrnd(0,1,length(x),1);

Y = zeros([length(Beta)],[length(t)]);

for row = 1:length(Beta)
    for col = 1:length(t)
        Y(row,col) = Beta(row)*sin(2*pi*t(col));
    end
end

X=Y;
  save("Y.mat","X","t");