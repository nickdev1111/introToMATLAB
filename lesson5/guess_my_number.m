function guess_my_number(x)
if x==11
    fprintf('Congrats! You guessed my number!\n')
elseif x<11
    fprintf('Too small. Try again.\n')
else
    fprintf('Too big. Try again.\n')
end