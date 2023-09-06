arquivo="arquivo_texto.txt"
num_palavras=`wc -w < $arquivo`
echo "Numero de palavras do arquivo $arquivo é $num_palavras."