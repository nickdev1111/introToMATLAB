function indices = saddle(M)
    indices = [];
    if size(M,1) == 1 && size(M,2) == 1
        indices = [1 1];
    elseif size(M,1) == 1
        % col vec of the max of each row 
        row_max = max(M,[],2);
        [row, col] = find(M==row_max);
        indices = [row' col'];
    elseif size(M,2) == 1
        % row vec of the min of each col 
        col_min = min(M);
        [row, col] = find(M==col_min);
        indices = [row col];
    elseif sum(M)~=0
        % col vec of the max of each row 
        row_max = max(M,[],2);
        % row vec of the min of each col 
        col_min = min(M);
        %saddle points
        [row, col] = find(M==row_max & M==col_min);
        indices = [row col];
    else
        for ii=1:size(M,1)
            for jj=1:size(M,2)
                indices = [indices; ii jj];
            end
        end
    end
end