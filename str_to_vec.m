function v = str_to_vec(x,n); %convert string x to array length n (msb first)
  s = strcat(repmat("0",1,n),x);
  s = substr(s,length(s)-n+1,n);
  v = zeros(1,n);
  for i = (1:n)
    v(i) = str2num(substr(s,i,1));
  endfor
end
