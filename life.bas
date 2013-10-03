ClrHome
{8,16}→dim([a])
{8,16}→dim([b])
Fill(0,[a])
For(x,2,7)
    For(y,2,15)
        If rand>.5
        Then
            1→[a](x,y)
            Output(x,y,"*")
        End
    End
End


Repeat getKey=45
    Fill(0,[b])
    For(x,2,7)
        For(y,2,15)
            0→c
            For(a,x-1,x+1)
                For(b,y-1,y+1)
                    If [a](a,b)=1
                        c+1→c
                End
            End
            c→[b](x,y)
        End
    End


    For(x,2,7)
        For(y,2,15)
            If [b](x,y)=3
                Output(x,y),"*")
            If [b](x,y)<2
                Output(x,y," ")
            If [b](x,y)>3
                Output(x,y," ")
        End
    End

End
