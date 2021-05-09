%确定k function k = curvature(H,n)
jmin_all = zeros(1,10);
delt_k = zeros(1,10);

%for k = 2:10
 %   s = zeros(20);
  %  for t = 1:20
        Idx = kmeans(H,6,'dist','cosine'); %kmeans聚类 cosine 并且计算群内方差，取最小值
        j = 0;
        o = 0;
        for j = 1:6
        %    h=0;
            x = find(Idx==j);  %标签为j的下标
            s(j,:) = std(x).^2;    %群内方差   
        end
        k = sum(s); 
  %   end
   %  jmin = min(s); %求最小的j
   %  jmin_all(k) = jmin;
   %  if k > 2
    %     delt_k(k) = jmin_all(k-1) - jmin_all(k);
    % end
%end

%for k= 3:9
    %[x,y] = min(abs(delt_k(1,2:10)));
 %   r(k) = delt_k(k)/delt_k(k+1);
%end
%[a,y] = max(r);

