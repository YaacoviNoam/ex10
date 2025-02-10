#!bin bash
#1
sed -n '/Sherlock\|Holmes/p' sherlockholmes.txt | wc -l
#2
sed 's/Holmes\|Sherlock/&/g' sherlockholmes.txt | grep -o 'Holmes\|Sherlock' | wc -l
#3
sed 's/^/Hello: /' sherlockholmes.txt
#4
sed 's/\b[A-Z][a-z]\{1,\} [A-Z][a-z]\{1,\}\b/Chat GPT/g' filename.txt
#5
sed 's/([^)]*)/\\[&\\]/g' sherlockholmes.txt

