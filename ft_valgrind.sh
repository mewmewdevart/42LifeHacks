#!/bin/bash

echo " ___      ___ ________  ___       ________  ________  ___  ________   ________     "
echo "|\  \    /  /|\   __  \|\  \     |\   ____\|\   __  \|\  \|\   ___  \|\   ___ \    "
echo "\ \  \  /  / | \  \|\  \ \  \    \ \  \___|\ \  \|\  \ \  \ \  \\ \  \ \  \_|\ \   "
echo " \ \  \/  / / \ \   __  \ \  \    \ \  \  __\ \   _  _\ \  \ \  \\ \  \ \  \ \\ \  "
echo "  \ \    / /   \ \  \ \  \ \  \____\ \  \|\  \ \  \\  \\ \  \ \  \\ \  \ \  \_\\ \ "
echo "   \ \__/ /     \ \__\ \__\ \_______\ \_______\ \__\\ _\\ \__\ \__\\ \__\ \_______\ "
echo "    \|__|/       \|__|\|__|\|_______|\|_______|\|__|\|__|\|__|\|__| \|__|\|_______| "


# Entrando na pasta bin
cd bin

# Obtendo o primeiro arquivo encontrado
first_file=$(find . -maxdepth 1 -type f | head -n 1)

# Executando o valgrind com o arquivo selecionado e salvando os resultados
valgrind --track-origins=yes ./"$first_file" > result.txt 2> leaks.txt

# Filtrando os erros encontrados
grep "ERROR SUMMARY" result.txt > errors.txt

# Comparando com um arquivo de teste
diff teste.txt errors.txt > result.diff

# Exibindo o resultado da comparação
cat result.diff
