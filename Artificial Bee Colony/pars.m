P=20; % number of sensing devices
R=6; % edge devices
Q=3; % gate way devices;
S=2;  % cloud servers
n1=5; %number of tasks
% x=find(x>0);
% x=reshape(x,[n,R]);
V=P+R+S; %Total number of processing devices
CPU_requirement_LB=0.1;
CPU_requirement_UB=0.5;
arraival_frequency_LB=1;
arraival_frequency_UB=10;
deadline_bound_LB=0;
deadline_bound_UB=10;
data_size_LB=0;
data_size_UB=10;
uploading_BW_LB=10000;
uploading_BW_UB=20000;
transmition_power_LB=1;
transmition_power_UB=1.2;
 OED=0+10.*rand(1,n1); %Execution dead line[0 10]
 Afreq=1+8.*rand(1,n1); %arrival frequency [1 9]
 U=OED./ Afreq;%utilization factor
 Q=task_importance(U);
 Q=zeros(n1,1);
 K=1e-10;
Q=randi(4,1,n1);
for i=1:length(Q)
    if ((Q(i)==4)|(Q(i)==3))
        of_c(i)=1;
    end
end
of_c=find(of_c==1);
n1=length(of_c);
for i=1:n1
        O(i,1)=CPU_requirement_LB+(rand(1)*(CPU_requirement_UB-CPU_requirement_LB)); %CPU requirement
        O(i,2)=arraival_frequency_LB+(rand(1)*(arraival_frequency_UB-arraival_frequency_LB)); %arrival frequency
       O(i,3)=deadline_bound_LB+(rand(1)*(deadline_bound_UB-deadline_bound_LB));  %deadline bound
        O(i,4)=data_size_LB+(rand(1)*(data_size_UB-data_size_LB)); %data size
end
Bij=20e6*ones(1,R);
Gi=rand(1,R); %Gain
Pi=transmition_power_LB+(transmition_power_UB-transmition_power_LB)*rand(1,R);
Tr=rand(1,R); % Data transmission rate;
R=min([n1,R]);
n1=R;
save parameters