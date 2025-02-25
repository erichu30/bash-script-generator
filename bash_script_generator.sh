#!/bin/bash

###################################################################
#SCRIPT NAME:   bash_script_generator.sh                                                                                 
#DESCRIPTION:   This script automatically creates a bash script and
#               write header for the script.
#USAGE:         bash bash_script_generator.sh NEW_SCRIPT_NAME
#               You can also set an alias named 'mksc' for the script
#               to use it easily. For this purpose edit and add the
#               following line to your bashrc/zshrc:
#               alias mksc='bash /PATH/TO/SCRIPT/bash_script_generator.sh'
#REQUIREMENTS:  vim
#AUTHOR:        Isin Altinkaya                                                
#EMAIL:         isinaltinkaya@gmail.com                                           
###################################################################

# the desired name of the new bash script 
SCRIPT_ID=$1

SCRIPT=${SCRIPT_ID}.sh

touch $SCRIPT

cat > "$SCRIPT" << EOF
#!/bin/bash

###################################################################
#SCRIPT NAME:   ${SCRIPT}                                                                                 
#DESCRIPTION:
#USAGE:         bash ${SCRIPT}
#REQUIREMENTS:
#AUTHOR:        Isin Altinkaya                                                
#EMAIL:         isinaltinkaya@gmail.com                                           
###################################################################


EOF

vim $SCRIPT -c ":12"
