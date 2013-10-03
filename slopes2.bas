PROGRAM:SLOPES2
-3→Xmin
-3→Ymin
3→Xmax
3→Ymax
ClrDraw
ClrHome
{5,5}→dim([a])
Fill(0,[a])
For(c,-3,3)
    For(d,-3,3,-1)
        c+.00000001→x
        d+.00000001→y
        If c=d
            c-.00000002→x
        prgmDXDY
        If imag(f)≠0
            1000→f
        If x>-2.5 and x < 3
        Then
            If y>-2.5 and y<3
                f→[a](c+3,3-d)
        End
        c-.4cos(tan¯¹(f))→i
        d-.4sin(tan¯¹(f))→j
        Line(g,h,i,j)
    End
End
For(y,1,5)
    For(x,1,5)
        round([a](x,y),1)→θ
        If abs(θ)<20
        Then
            Output(y,3x-2,θ)
        Else
            Output(y,3x-2,"?")
        End
    End
End

PROGRAM:DXDY
x³-4x
