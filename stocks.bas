PROGRAM:STOCKS
0→Xmin
100→Xmax
0→Ymin
20→Ymax
10→e
Lbl 1
0→t
ClrDraw
While getKey=0
    t+.1→t
    e+(rand-.5)→e
    If e>Ymax
        Ymax→e
    If e<Ymin
        Ymin→e
    Pt-On(t,e)
    If t<Xmax
End
Xmax*2→Xmax
Xmax/2→Xmin
Goto 1

StorePic 5
Pause
ZStandard
