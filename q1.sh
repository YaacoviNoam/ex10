#!bin bash
#1
awk 'END {print "Total lines: ",NR}' aliceinwonderland.txt
#2
awk '{count += gsub(/ Alice /, "")} END {print "Occurrences of Alice:", count}' aliceinwonderland.txt
#3
awk '{for (i=1; i<=NF; i++) freq[$i]++} END {for (word in freq) if (freq[word] == 1) print word}' aliceinwonderland.txt
#4
awk '{for (i=1; i<=NF; i++) if (length($i) >= 2) freq[$i]++} END {for (word in freq) print word, freq[word]}' aliceinwonderland.txt | sort -k2 -nr | head -5
#5
awk '{for (i=1; i<=NF; i++) {total_length += length($i); total_words++}} END {print "Average word length:", total_length/total_words}' aliceinwonderland.txt


