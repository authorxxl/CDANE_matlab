function label = VectorFrequency(NeighBor,i)
VerticeNum=34;
%统计节点i邻居中数量最多的标签 标签数记录在counts里
counts = zeros(1,VerticeNum);
for ii=i
    for jj=1:VerticeNum
        if NeighBor(ii,jj)~=0
           t=NeighBor(ii,jj);
           counts(t)=counts(t)+1;
        end
    end
end

% m是最大值，p是最大值所在的索引
[m,p] = max(counts);
label=[];
for ii=p:VerticeNum
    if counts(ii)==m
        label=[label,ii];
    end
end


