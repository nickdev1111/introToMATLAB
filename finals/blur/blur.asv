function output = blur(img,w)
    width = 2*w+1;
    shift = fix(width/2);
    for ii=1:size(img,1)
        for jj=1:size(img,2)
            up = uint64(ii-shift);
            down = uint64(ii+shift);
            left = uint64(jj-shift);
            right = uint64(jj+shift);
            %checking bounds
            up(up == 0)=up+1;
            left(left==0)=left+1;
            right(right>size(img,2))=size(img,2);
            down(down>size(img,1))=size(img,1);
            img(ii,jj) = mean(img(up:down,left:right),"all");
        end
    end
    output = uint8(img);
end