PROGRAM:LORENZ
AxesOff
-20→Xmin
25→Xmax
0→Ymin
50→Ymax
.001→t
30*rand→u
30*rand→v
30*rand→w

ClrDraw
For(i,1,10000)
    If getKey≠0
        Return

    t(10*(y-x))→a
    t(28*x-y-x*z)→b
    t(x*y-8/3*z)→c



    x+a→x
    y+b→y
    z+c→z

    Pt-On(x,z)
    If t=10
        Goto 9
End
Lbl 9
StorePic 0
