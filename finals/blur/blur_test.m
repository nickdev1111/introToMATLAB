img = imread('vandy.png');
for i=1:3
    figure(i);
    output = blur(img,i);
    imshow(output);
end