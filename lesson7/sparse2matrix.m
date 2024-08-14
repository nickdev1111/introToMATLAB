function matrix = sparse2matrix(cellvec)
    cell_end =  size(cellvec,2);
    row = cellvec{1}(1,1);
    col = cellvec{1}(1,2);
    def_val = cellvec{2};
    matrix = ones(row,col).*def_val;
    for ii=3:cell_end
        r = cellvec{ii}(1,1);
        c = cellvec{ii}(1,2);
        v = cellvec{ii}(1,3);
        matrix(r,c) = v;
    end
end