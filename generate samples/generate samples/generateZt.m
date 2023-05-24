t = 0:0.1:2;
x=-5:0.1:4.9;
Beta = normrnd(0,1,length(x),1);

Y = zeros([length(Beta)],[length(t)]);

for row = 1:length(Beta)
    for col = 1:length(t)
        Y(row,col) = Beta(row)*sin(2*pi*t(col));
    end
end

 h= load("Sample_Process_2022.mat");
 R = h.X;

 G = R(:,1:end-80);

 Z = G.*Y;

X=Z;
  save("Z.mat","X","t");