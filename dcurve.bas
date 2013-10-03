PROGRAM:DCURVE
Prompt a
Prompt b
Prompt n
0→d
(b-a)/n→x

For(i,0,n-1)
    a+xi→e
    a+x(i+1)→f
    d+√((f-e)²)→d
End

Disp d
