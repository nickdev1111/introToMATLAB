function valid = valid_date(year, month, day)
valid = isscalar(year) && year > 0 && year == fix(year);
if isscalar(year) && year > 0 && year == fix(year)
    valid = isscalar(month) && 0 < month && month < 13 && month == fix(month);
    if isscalar(month) && 0 < month && month < 13 && month == fix(month)
            valid = isscalar(day) && day > 0 && day == fix(day);
        if isscalar(day) && day > 0 && day == fix(day)
            if (month==1||month==3||month==5||month==7||month==8||month==10||month==12)
                valid = day<=31;
            elseif (month==4||month==6||month==9||month==11)
                valid = day<=30;
            elseif month==2
                valid = day <=28;
                if year == (fix(year/4)*4)
                    valid = day <=29;
                    if year == (fix(year/100)*100)
                        valid = day <=28;
                        if year == (fix(year/400)*400)
                            valid = day<=29;
                        end
                    end
                end
            end
        end
    end
end