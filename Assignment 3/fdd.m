function result = fdd(input_x,input_y)

if length(input_x)==2
    result = (input_y(2)-input_y(1))/(input_x(2)-input_x(1))
    return
end

x_1=input_x(1)
x_f = input_x(end)

result = (fdd(input_x(2:end),input_y(2:end))-fdd(input_x(1:end-1),input_y(1:end-1)))/(x_f-x_1)
return
end
