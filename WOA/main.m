



SearchAgents_no=100; % Number of search agents

%Function_name='F1'; % Name of the test function that can be from F1 to F23 (Table 1,2,3 in the paper)

Max_iteration=100; % Maximum numbef of iterations

% Load details of the selected benchmark function
%[lb,ub,dim,fobj]=Get_Functions_details(Function_name);
load parameters;
        fobj = @for_task;
        lb=-100;
        ub=100;
        dim=n1*R;
[Best_score,Best_pos,WOA_cg_curve]=WOA(SearchAgents_no,Max_iteration,lb,ub,dim,fobj);


%Draw objective space

plot(WOA_cg_curve,'Color','b','LineWidth',2)
title('Objective space')
xlabel('Iteration');
ylabel('Best score obtained so far');



display(['The best solution obtained by WOA is : ', num2str(Best_pos)]);
display(['The best optimal value of the objective funciton found by WOA is : ', num2str(Best_score)]);

        
Best_pos=Best_pos>0;
Best_pos=reshape(Best_pos,n1,R);


