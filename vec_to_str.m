function v = vec_to_str(x); %convert array of digits to string
  if(max(x) > 0)
    x = x(find(x != 0)(1):end);
    v = sprintf(repmat("%d",1,size(x,2)),x);
  else
    v = "0";
  endif
  
end
