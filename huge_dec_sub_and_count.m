%a,b are decimal strings:
%subtract b from decimal string a as many times as is safe and count how many
function [count,rem] = huge_dec_sub_and_count(a,b);
  n = 1 + max(length(a),length(b)); %number of digits
  av = str_to_vec(a,n);
  bv = str_to_vec(b,n);
  carry = 0;
  count = 0;
  while (carry >= 0)
    cv = av - bv;
  
    % carry upwards from lsb and leave result in binary
    carry = 0;
    for i = (n:-1:2)
      dig_val = mod(carry + cv(i),10);
      carry   = floor((carry + cv(i))/10);
      cv(i) = dig_val;
    endfor
  
    if (carry < 0)
      rem = vec_to_str(av); %final carry is negative means final answer is negative
    else
      cv(1) = carry; % put final carry in the msb
      count = count + 1;
      av = cv;
    endif
  endwhile
  
end