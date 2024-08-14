function distance = get_distance(r,c)
    if strcmp(r,c)
        distance = 0;
    else
        row=0;
        col=0;
        dist = xlsread('Distances.xlsx');
        [~, cities] = xlsread('Distances.xlsx');
        cities = cities(2:size(cities,1));
        for ii=1:size(dist,1)
            row(row<1) = ii*strcmp(r,cities{ii});
            col(col<1) = ii*strcmp(c,cities{ii});
        end
        if row~=0 && col~=0
            distance = dist(row,col);
        else
            distance = -1;
        end
    end
end