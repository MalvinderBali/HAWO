function Q=task_importance(U)
global n;
Q=zeros(n,1);
for i=1:length(Q)
    if (U(i) <(1/4))
        Q(i)=1;
    end
    if (U(i) >(1/4) && U(i) <(1/3))
        Q(i)=2; % emergency tasks
    end
    if (U(i)>1/3) &&(U(i)<(1/2))
        Q(i)=3;
    end
    if (U(i)>(1/2))
        Q(i) =4;
    end
    
end