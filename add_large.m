function z = add_large(x,y)    sx = size(x)(2);  sy = size(y)(2);  sz = max(sx,sy)+1;  x = [zeros(1,sz-sx) x];  y = [zeros(1,sz-sy) y];  z = x+y     for i = (sz:-1:1)     if (z(i)>9)       z(i) = mod(z(i),10);       z(i-1) = z(i-1) + 1;      endif   endfor   if(z(1)==0)    z = z(2:end);  endif 
endfunction
