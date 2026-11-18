' A aula move um ícone com este macro. O LibreOffice não executa VBA,
' então o menu do Caderno do IR é hiperlink entre as abas.
' Se abrir no Excel e quiser testar, o nome tem que ser exatamente o do shape.

Sub MoverIconeParaPosicao()
    Dim shp As Shape
    Dim nomeIcone As String

    nomeIcone = "Ícone 1"

    For Each shp In ActiveSheet.Shapes
        If shp.Name = nomeIcone Then
            shp.Left = 100
            shp.Top = 50
            MsgBox "Movi o " & nomeIcone & ".", vbInformation
            Exit Sub
        End If
    Next shp

    MsgBox "Não achei " & nomeIcone & " nesta aba.", vbExclamation
End Sub
