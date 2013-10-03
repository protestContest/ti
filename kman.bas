PROGRAM:KMAN
ClrHome
1→k
1→m
16→a
8→n

// Intro animation
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

4→x     // player's position
5→y
4→m     // enemy's position
8→n
1→g     // found gold flag
0→s     // score
0→l     // enemy difficulty

// main loop
Repeat k=45                     // "clear" button
    Output(1,15,s)
    If g=1                      // found gold?
    Then
        l+1→l                   // level up enemy
        round(rand*7+1,0)→h     // position new gold
        round(rand*15+1,0)→i
        Output(h,i,"*")         // show gold
        0→g
    End

    prgmKEY                     // wait for user input, store in k
    Output(x,y," ")             // hide player
    If k=24 and y>1             // move left
        y-1→y
    If k=26                     // move right
        y+1→y
    If k=25 and x>1             // move up
        x-1→x
    If k=34 and x<8             // move down
        x+1→x
    Output(x,y,"K")             // show player

    Output(m,n," ")             // hide enemy
    If rand<.49+.01l            // whether enemy moves, more likely as l incr
    Then
        abs(m-x)→o              // vertical distance from player
        abs(n-y)→p              // horizontal distance from player
        If o>p                  // move in direction player is farthest
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
    Output(m,n,"N")             // show enemy

    If x=h and y=i              // if player on top of gold
    Then
        s+1→s                   // incr score
        1→g                     // set found gold flag
    End

    If x=m and y=n              // if player on top of enemy
        Goto 1                  // essentially "break"

End

Lbl 1
ClrHome
Disp " YOU DIED!"
Disp "SCORE:"
Disp s
9088→p
Return

// helper program to get user input
PROGRAM:KEY
0→k
While k=0
    getKey→k       // getKey doesn't block, so we have to spin until user input
End
