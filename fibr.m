function f = fibr(n)  if (n==0)    f=0;
  elseif (n==1)    f=1;  else     f = fibr(n-1) + fibr(n-2);  endif   
endfunction
