function coded = caesar(str,shft)
    % shift simplified by removing multiples
    % of the full length bc just looping thru characters
    shft = mod(shft,length(' ' : '~'));
    % adds the shft to the ascii for each char
    coded = str + shft;
    % if the index char is over 126 wraps around 
    % and continues shifting
    coded(126<coded) = 31+abs(coded(126<coded)-126);
    % if the index char is under 32 wraps around 
    % and continues shifting
    coded(coded<32) = 127-abs(coded(coded<32)-32);
    % turns the result in char form
    coded=char(coded);
end