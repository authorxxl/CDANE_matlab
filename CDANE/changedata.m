%load('sinaemline44.txt');

%sinaemline = [];
%for i = 1:3490
 %   for j = 1:129
  %      t = sinaemline44(i,1);
   %     sinaemline(t,:) = sinaemline44(i,2:129);
       
  %  end
%end

%save sinaemline.mat sinaemline Label

%c=[];
%d=1;
%for i = 1:3490
 %   if sinaemline(i)==0
  %      c(d)=i;
   %     d=d+1;
   % end
%end
%Label = citecon1(:,3705);
%save citelabel.mat Label
%load('citecon1.txt');
%Attributes = citecon1(:,2:3704);


load('cite1.txt');
%list=[];
%m=1;
%for i =1:4717
 %   for j=1:2
  %      if(cite1(i,j)>3312)
  %          list(m)=i;
   %         m=m+1;
   %     end
   % end
%end
Network = [];
for i = 1:4615
    m = cite1(i,1);
    n = cite1(i,2);
    Network(m,n)=1;
    Network(n,m)=1;
end
for i =1:3312
    Network(i,i)=0;   
end




