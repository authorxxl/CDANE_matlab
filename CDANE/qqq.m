%????k function k = curvature(H,n)
tic 

A_high=zeros(1,1);
B_high=zeros(1,1);
for u = 1:1
    re_sum = zeros(1,50);
    for re = 1:50
        jmin_all = zeros(1,10);
        delt_k = zeros(1,10);
        for k = 2:10
            s = zeros(1,200);      
            for t = 1:200
                opts = statset('Display','off','MaxIter',1000);
                [Idx,ctrs] = kmeans(H,k,'dist','cosine','Options',opts);
                c = 0;
                o = 0;
                for j = 1:k
                    h=0;
                    x=0;
                    x = find(Idx==j);  
                    for i = 1:length(x)
                        m = x(i);
                        h = h + H(m,:);  
                    end
                    hm = h/length(x); 
                    for i = 1:length(x)
                        m = x(i);
                        c = c + sum((H(m,:) - hm).^2);
                    end
                end
                s(1,t) = c;
            end
            jmin = min(s); 
            jmin_all(1,k) = jmin;
            if k > 1
                delt_k(1,k) = jmin_all(1,k-1) - jmin_all(1,k);
            end
        end

        for k= 3:9
            r(1,k) = delt_k(1,k)./delt_k(1,k+1);
        end
        [a,y] = max(r(1,3:9));
        re_sum(1,re) = y+2;
        r(1,y+2)=0;
        [g,z] = max(r(1,3:9));
        re_sum(1,50+re) = z+2;

    end
    A_high(1,u)=mode(re_sum(1,1:50));
    B_high(1,u)=mode(re_sum(1,51:100));
end

toc