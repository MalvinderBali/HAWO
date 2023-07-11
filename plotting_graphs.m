clc;
clear all;
%%
tic;
run('WOA\main.m');
toc;
%%
hold on;
%%
tic;
run('Artificial Bee Colony\abc.m');
toc;

%%
%run('Artificial Bee Colony\abc.m');
hold on;
%%
tic
run('ABC_WOA\Hybrid_ABC_WOA.m');
toc;
%%
ylim([0,5]);
legend('WOA','HAWO','ABC');
%%
figure;
bar([7.339910,15.527901,16.850392]);
xticklabels({'WOA','ABC','HAWO'});
grid on;
xlabel('Method');
ylabel('Computation time (ms)');
%%
figure;
BC=[2.8128,2.918457,1.4009];
bar(BC,'r');
xticklabels({'WOA','ABC','HAWO'});
grid on;
xlabel('Method');
ylabel('Best cost');

%%
figure;
Ene=[0.57 0.55 0.4];
bar(Ene,'m');
xticklabels({'WOA','ABC','HAWO'});
grid on;
xlabel('Method');
ylabel('Energy (in Mw)');

%%
figure;
Tm_dly=[55 44.8 40];
bar(Tm_dly,'g');
xticklabels({'WOA','ABC','HAWO'});
grid on;
xlabel('Method');
ylabel('Time delay (in ms)');
