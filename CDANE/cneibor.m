function Net = cneibor(net,n)

%Net = zeros(n,n);
%neibor = zeros(n,n);
%求出各自的邻居
for i = 1:n
    it = 1;
    for j = 1:n
        if net(i,j)==1
            neibor(i,it)=j;
            it = it + 1;
        end
    end
end
%若相连，则计算相同的共同邻居数量，减去0这个数字，否则为0。
for i = 1:n
    for j = i+1:n
        if net(i,j) == 0
            Net(i,j)=0;
        else
            p = intersect(neibor(i,:),neibor(j,:));
            Net(i,j) = (length(p)-1) / n ;
            Net(j,i) = (length(p)-1) / n ;
        end
    end
end
%save netacm1.mat Net 