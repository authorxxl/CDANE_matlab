function label = VectorFrequency(NeighBor,i)
VerticeNum=34;
%ͳ�ƽڵ�i�ھ����������ı�ǩ ��ǩ����¼��counts��
counts = zeros(1,VerticeNum);
for ii=i
    for jj=1:VerticeNum
        if NeighBor(ii,jj)~=0
           t=NeighBor(ii,jj);
           counts(t)=counts(t)+1;
        end
    end
end

% m�����ֵ��p�����ֵ���ڵ�����
[m,p] = max(counts);
label=[];
for ii=p:VerticeNum
    if counts(ii)==m
        label=[label,ii];
    end
end


