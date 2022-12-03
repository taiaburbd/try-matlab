clear all
function [output] = multiplicationtable(m,n)
outpot=zeros(m,n);
for row=1:1:m
    for column=1:1:n
        y=row*column
        outpot(row,column)=y
    end
end

end