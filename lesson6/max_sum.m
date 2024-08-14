function [summa, index] = max_sum(v,n)
summa=0;
    if size(v,2)==n
        summa = sum(v);
        index = 1;
    elseif size(v,2)<n
        summa = 0;
        index = -1;
    else
        size(v,2)
        for ii=1:(size(v,2)-n)+1
            if ii==1
                index=ii;
                summa = sum(v(ii:ii+n-1));
            end
            temp = sum(v(ii:ii+n-1));
            index(temp>summa) = ii;
            summa(temp>summa) = temp;
        end
    end