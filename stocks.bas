// stock market simulator, guaranteed accurate
PROGRAM:STOCKS
// setup graphing area
0→Xmin
100→Xmax
0→Ymin
20→Ymax
10→e    // stock price

// main loop
Lbl 1
0→t     // time (x-axis)
ClrDraw
While getKey=0
    t+.1→t
    e+(rand-.5)→e   // price shift
    If e>Ymax       // constrain price
        Ymax→e
    If e<Ymin
        Ymin→e
    Pt-On(t,e)
If t<Xmax           // if time goes off screen, reset screen ("break")
End
Xmax*2→Xmax
Xmax/2→Xmin
Goto 1

// record screen and reset
StorePic 5
Pause
ZStandard
