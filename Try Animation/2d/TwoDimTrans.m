clc
clear all
while(1)
    choice = input('Choose a shape for demonstration:\n1)square    2)circle\n');
    if(choice==1 || choice==2)
        break;
    else
        fprintf("Enter a valid option\n");
    end
end
if choice == 1
    square();
else
    circle();
end