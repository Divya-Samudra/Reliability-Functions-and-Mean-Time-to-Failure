clc; clear;
t = 0:0.1:25; %time in years
for i = 1:size(t,2)
    PDF(i) = 1/((t(i)+1)^2); %Probability distribution function
    F(i) = ((-1)/(t(i)+1))+1; %Cumulative distribution function
    R(i) = 1-F(i); %Reliability
    lambda(i) = 1/(1+t(i)); %Failure rate
end
figure(1)
title('PDF, CDF, Reliability, Lambda')
hold on
plot(t,PDF,'b','LineWidth',2)
hold on
plot(t,F,'r','LineWidth',2)
hold on
plot(t,R,'g*','LineWidth',2)
hold on
plot(t,lambda,'k','LineWidth',2)
hold on
legend('f(t)','F(t)','R(t)','lambda(t)');
xlabel('Time in years')
ylabel('Outputs')
grid on