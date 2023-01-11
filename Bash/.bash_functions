# Bash Functions

############ PS1 Functions #############
# Check if mpc is playing music and report. (for PS1)

function mpc_current {
   if [[ $(mpc current) ]]; then
      echo -e "[ $(mpc current) ]"
    else
      sleep 0
   fi
}

# TEst CPU FUN
function CPU_USE {
     if [[ $(cat ~/CPU.txt) > 25 ]]; then
	     echo -e "[CPU: $(cat ~/CPU.txt)%]"
	 else
             sleep 0
      fi
}

# RAM Usage
function RAM_USE {
	if [[  $(free | grep Mem | awk '{print $3/$2 * 100.0}' | cut -d . -f 1) > 25 ]]; then
		echo "[RAM: $(free | grep Mem | awk '{print $3/$2 * 100.0}' | cut -d . -f 1)%] "
	    else
		sleep 0
	fi
}


function EXIT_CODE {
        if [[ $? = 0 ]]; then
            sleep 0
        else
            echo "[$?]" ; PROMPT_COMMAND=""
        fi
}

function BG_JOBS {
         if [[ $(jobs -r | wc -l) = 0 ]]; then
            sleep 0
         else
            echo " <$(jobs -r | wc -l)>"
        fi
}



# Right Prompt
function rightprompt()
{
    printf "%*s" $COLUMNS "`mpc_current`"
}

#-----#Git Test#---#

GIT_YES () {
        if [[ $(git status --porcelain | wc -l) > 0 ]]; then
               echo "[Git:$(git status --porcelain | wc -l)]"
            else
                  echo "[Git:0]"
        fi
}

function GIT_TEST {
         if [[ -d .git ]]; then
            GIT_YES
        else
            sleep 0
        fi
}
