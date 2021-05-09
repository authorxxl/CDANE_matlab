function NeighBor = Findneighbour(i,AdjacentMatrix)

%矩阵的行数，即节点总数
m = size(AdjacentMatrix,1);
NeighBor=zeros(m,m);
%找到i的所有邻居并存在NeighBor[i]中
for i=1:i 
    d=1;
    for jj=1:m
        if AdjacentMatrix(i,jj)==1
            NeighBor(i,d)=jj;
            d=d+1;
        end
    end
end
