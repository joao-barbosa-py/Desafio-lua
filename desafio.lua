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

local INITIAL_TABLE <const> = "|"
local BORDER_TOP_BOT <const> = "###############################################"

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
print(BORDER_TOP_BOT)
print(INITIAL_TABLE)
print(INITIAL_TABLE .. monsterName)
print(INITIAL_TABLE .. description)
print(INITIAL_TABLE)
print(INITIAL_TABLE .. item)
print(INITIAL_TABLE .. sound)
print(INITIAL_TABLE .. emoji)
print(INITIAL_TABLE .. favoriteTime)
print(INITIAL_TABLE)
print(INITIAL_TABLE .. " Atributos")
print(INITIAL_TABLE .. "    Ataque:       " .. getProgressBar(atackAttribute))
print(INITIAL_TABLE .. "    Defesa:       " .. getProgressBar(defenseAttribute))
print(INITIAL_TABLE .. "    Vida:         " .. getProgressBar(lifeAttribute))
print(INITIAL_TABLE .. "    Velocidade:   " .. getProgressBar(speedAttribute))
print(INITIAL_TABLE .. "    Inteligência: " .. getProgressBar(inteligenceAttribute))
print(INITIAL_TABLE)
print(BORDER_TOP_BOT)
