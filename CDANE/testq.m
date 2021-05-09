%K1=A_high;
%K2=B_high;
Q = zeros(1,20);
for i = 1:20
    Idx = kmeans(H,K1,'dist','cosine');
    Idx=reshape(Idx,[5196,1]);
    Q(1,i) = modul(Network,Idx);
end

q = mean(Q);