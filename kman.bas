PROGRAM:KMAN
If p ≠ 9088
Then
    Output(2,1,"ACCESS DENIED")

End

ClrHome
1→k
1→m
16→a
8→n

For(x, 1, 11)
    If k≤5
        Output(1,k, "K")

    If k>5 and k≤9
        Output(k-5, 5, "k")
    k+1→k

    If m≤6
        Output(7,m,"M")

    If m > 6 and m≤9
        Output(13-m,6,"M")
    m+1→m

    If a≥7
        Output(3,a,"A")

    If a<7
        Output(4,7,"A")

    a-1→a

    If n≥4
        Output(n,13,"N")
    If n<4 and n≥-1
        Output(4,n+9,"N")
    n-1→n
End
ClrHome
Output(3,4,"------")
Output(4,4,"!KMAN!")
Output(5,4,"------")

4→x
5→y
4→m
8→n
1→g
0→s
0→l
Repeat k=45
    Output(1,15,s)
    If g=1
    Then
        l+1→l
        round(rand*7+1,0)→h
        round(rand*15+1,0)→i
        Output(h,i,"*")
        0→g
    End

    prgmKEY
    Output(x,y," ")
    If k=24 and y>1
        y-1→y
    If k=26
        y+1→y
    If k=25 and x>1
        x-1→x
    If k=34 and x<8
        x+1→x
    Output(x,y,"K")

    Output(m,n," ")
    If rand<.49+.01l
    Then
        abs(m-x)→o
        abs(n-y)→p
        If o>p
        Then
            If m>x
            Then
                m-1→m
            Else
                m+1→m
            End
        Else
            If n>y
            Then
                n-1→n
            Else
                n+1→n
            End
        End
    End
    Output(m,n,"N")

    If x=h and y=i
    Then
        s+1→s
        1→g
    End

    If x=m and y=n
        Goto 1

End

Lbl 1
ClrHome
Disp " YOU DIED!"
Disp "SCORE:"
Disp s
9088→p
Return

PROGRAM:KEY
0→k
While k=0
    getKey→k
End
