function cof=cof(a)
    [r c] = size(a);    %determine size of input           
    m = ones(r,c);      %preallocate r x c cofactor matrix        
    a_temp=a;           %create temporary matrix equal to input
    for i = 1:r
        for k = 1:c
            a_temp([i],:)=[];   %remove ith row
            a_temp(:,[k])=[];   %remove kth row
            m(i,k) = ((-1)^(i+k))*det(a_temp);  %compute cofactor element
            a_temp=a;   %reset elements of temporary matrix to input elements
        end  
    end

    cof=m;  %return cofactor matrix as output variable

end

