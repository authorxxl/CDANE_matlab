function Net = cneibor(net,n)

%Net = zeros(n,n);
%neibor = zeros(n,n);
%������Ե��ھ�
for i = 1:n
    it = 1;
    for j = 1:n
        if net(i,j)==1
            neibor(i,it)=j;
            it = it + 1;
        end
    end
end
%���������������ͬ�Ĺ�ͬ�ھ���������ȥ0������֣�����Ϊ0��
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