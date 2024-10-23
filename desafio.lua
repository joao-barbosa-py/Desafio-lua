--[[
Nome da criatura
Descrição
Som que faz
Atributos
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Inteligência
Habilidades
    Furtividade
    Explosão

========================================
x
x CREEPER
x Um monstro muito sagaz que explode na sua cara
x
x som: Tsss
x
x Atributos:
x   Ataque: ##########
x   Defesa: ###00000
x
========================================
]]

-- Habilitar UFT-8 no termínal
os.execute("chcp 65001")

--Criatura
local monsterName = "CREEPER"
local description = "Um monstro furtivo com um temeramento explosivo"
local emoji = "☠️"
local sound = "Tssss"
local favoriteTime = "Noturno"
local item = "Polvora"

-- Atributos
local atackAttribute = 10
local defenseAttribute = 2
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2

--Função que recebe um atributo e nos retorna uma barra de progresso em string
local function getProgressBar(attribute)
    local fullChar = "◽"
    local emptyChar = "◾"
    local result = ""
    for index = 1, 10, 1 do
        if index <= attribute then
            --quadradinho cheio
            result = result .. fullChar
        else
            --quadradinho vazio
            result = result .. emptyChar
        end
    end
    return result
end


--Cartão
print("==================================================")
print("x")
print("x" .. monsterName)
print("x" .. description)
print("x")
print("x Item favorito: " .. item)
print("x Som: " .. sound)
print("x Emoji Favorito: " .. emoji)
print("x Horário Favorito: " .. favoriteTime)
print("x")
print("x Atributos")
print("x    Ataque:       " .. getProgressBar(atackAttribute))
print("x    Defesa:       " .. getProgressBar(defenseAttribute))
print("x    Vida:         " .. getProgressBar(lifeAttribute))
print("x    Velocidade:   " .. getProgressBar(speedAttribute))
print("x    Inteligência: " .. getProgressBar(inteligenceAttribute))
print("x")
print("==================================================")
