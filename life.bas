// Conway's game of life
ClrHome
{8,16}→dim([a])     // initialize "frame buffer"
{8,16}→dim([b])     // initialize neighbor counts
Fill(0,[a])         // blank [a]
For(x,2,7)          // fill [a], screen with random data
    For(y,2,15)
        If rand>.5
        Then
            1→[a](x,y)
            Output(x,y,"*")
        End
    End
End

// main loop
Repeat getKey=45                        // until user presses "clear"
    Fill(0,[b])                         // blank neighbor count array

    // count neighbors
    For(x,2,7)                          // iterate through screen/[a]
        For(y,2,15)
            0→c                         // neighbor count
            For(a,x-1,x+1)              // iterate around current "pixel"
                For(b,y-1,y+1)
                    If [a](a,b)=1       // found neighbor
                        c+1→c
                End
            End
            c→[b](x,y)                  // store counts
        End
    End

    // draw and prepare next frame
    For(x,2,7)
        For(y,2,15)
            If [b](x,y)=3
            Then
                Output(x,y),"*")
                1→[a](x,y)
            End
            If [b](x,y)<2
            Then
                Output(x,y," ")
                0→[a](x,y)
            End
            If [b](x,y)>3
            Then
                Output(x,y," ")
                0→[a](x,y)
            End
        End
    End

End
