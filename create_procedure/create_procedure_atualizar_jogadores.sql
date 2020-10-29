CREATE PROCEDURE atualizar_jogadores_clube
@Nome1 Varchar(100),
@ClubeId1 int,
@Nome2 Varchar(100),
@ClubeId2 int
AS
BEGIN
    UPDATE Jogador
    SET Nome = @Nome1 
    WHERE ClubeId = @ClubeId1

    UPDATE Jogador
    SET Nome = @Nome2
    WHERE ClubeId = @ClubeId2
END

EXECUTE atualizar_jogadores_clube 'silvio',3,'fran',1
SELECT * FROM Jogador