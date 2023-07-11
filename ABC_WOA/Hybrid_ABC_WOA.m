%% Problem settings
load parameters;
lb = -2*ones(1,n1*R);         % Lower bound
ub = 2*ones(1,n1*R);            % Upper bound
prob = @for_task;                 % Fitness function

%% Algorithm parameters
Np = 100;                            % Population Size
T = 100;                             % No. of iterations
limit =3;                          % Parameter limit indicating maximum number of failures

rng(2,'twister')

[bestsol,bestfitness] = ABC(prob,lb,ub,Np,T,limit);
%%
bestsol=bestsol>0;
bestsol=reshape(bestsol,[n1,R]);
%%
