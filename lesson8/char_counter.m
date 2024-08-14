function charnum = char_counter(fname, character)
    charnum=0;
    fid = fopen(fname,'r');
    if fid < 0 || double(character)<32 || double(character)>126
        charnum = -1;
    else
        % Read file as a set of strings, one string per line:
        oneline = fgets(fid);
        while ischar(oneline)
            charnum = charnum + sum(oneline(oneline==double(character))/double(character));
            oneline = fgets(fid);
        end
    end
end