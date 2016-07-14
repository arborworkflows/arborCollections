cat ../fitTraitModels/* | grep "\"script\"" | sed 's/\"script\"\: \"/\#\#\"script\"\: \"\\n/' > code.txt
STR=$(<code.txt)
printf "$STR" > fitTraitModels_Rcode.R
rm -f code.txt

cat ../estimateAncestralStates/* | grep "\"script\"" | sed 's/\"script\"\: \"/\#\#\"script\"\: \"\\n/' > code.txt
STR=$(<code.txt)
printf "$STR" > estimateAncestralStates_Rcode.R
rm -f code.txt

cat ../fitLinearModels/* | grep "\"script\"" | sed 's/\"script\"\: \"/\#\#\"script\"\: \"\\n/' > code.txt
STR=$(<code.txt)
printf "$STR" > fitLinearModels_Rcode.R
rm -f code.txt

cat ../testPhylogeneticSignal/* | grep "\"script\"" | sed 's/\"script\"\: \"/\#\#\"script\"\: \"\\n/' > code.txt
STR=$(<code.txt)
printf "$STR" > testPhylogeneticSignal_Rcode.R
rm -f code.txt
