CREATE PROCEDURE SP_Atualizar_Jogador

    @JogadorId INT,
    @ClubeId INT


AS
BEGIN
    UPDATE
        Jogador SET 
        ClubeId = @ClubeId
        WHERE Id = @JogadorId

END


EXEC SP_Atualizar_Jogador  2,1

SELECT * FROM Jogador