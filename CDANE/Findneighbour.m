function NeighBor = Findneighbour(i,AdjacentMatrix)

%��������������ڵ�����
m = size(AdjacentMatrix,1);
NeighBor=zeros(m,m);
%�ҵ�i�������ھӲ�����NeighBor[i]��
for i=1:i 
    d=1;
    for jj=1:m
        if AdjacentMatrix(i,jj)==1
            NeighBor(i,d)=jj;
            d=d+1;
        end
    end
end
