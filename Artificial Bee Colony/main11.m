load parameters;
 %x=(x>0);
 %x=reshape(x,[n1,R]);
for i=1:R
Dijup(i)=Bij(i)*(log2(1+((Pi(i)*Gi(i))/((Tr(i))^2))));
end
for i=1:n1
    for j=1:R
        Tup(i,j)=(O(i,4))/Dijup(j); %uploading time delay
        Eup(i,j)= Tup(i,j)*Pi(j);
    end
end
%%
 OPR=ones(1,R).*1900; %Processing density;
  for i=1:n1
      for j=1:R
 D_CPU(i,j)=O(i,4).*OPR(j);
      end
  end
  %% processing time 
f_CPU_cloud=rand(1,R).*1e9;
 for i=1:n1
    for j=1:R
         Tv(i,j)=(D_CPU(i,j))/f_CPU_cloud(j);
         Ev(i,j)=K*D_CPU(i,j)*f_CPU_cloud(j);
     end
 end
 %%
  %% down stream
 for i=1:R
Dijdown(i)=Bij(i)*(log2(1+((Pi(i)*Gi(i))/((Tr(i))^2))));
end
for i=1:n1
    for j=1:R
        Tdown(i,j)=(O(i,4))/Dijdown(j); %uploading time delay
        Edown(i,j)= Tdown(i,j)*Pi(j);
    end
end
T_metrics=Tup+Tdown+Tv;
E_metrics=Eup+Edown+Ev;
T_metrics = T_metrics/norm(T_metrics);
E_metrics=E_metrics/norm(E_metrics);
w1=1;
w2=1;
weighted_metrics=w1.*T_metrics+w2.*E_metrics;
% weighted_metrics=weighted_metrics(:);
x=randi([0,1],[n1,R]);
