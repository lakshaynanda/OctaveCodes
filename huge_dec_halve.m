function f = huge_dec_halve(a); %halve a decimal string
  l    = length(a);
  dec  = str_to_vec(a,l);
  even = floor(dec/2);
  if (l > 1)
    odd  = 5.*mod(dec(1:end-1),2);
  else
    odd  = 0;
  endif
  f = huge_dec_add(vec_to_str(even),vec_to_str(odd));
end