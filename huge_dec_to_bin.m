function f = huge_dec_to_bin(a); %convert decimal string to binary array
  f = [];
  
  while (!strcmp(a,"0"))
    last_dig = str2num(substr(a,length(a),1));
    f = [mod(last_dig,2) f];
    a = huge_dec_halve(a);
  endwhile
    
end