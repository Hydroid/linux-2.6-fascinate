#!/bin/bash

# Available options for MODELS are fascinate, mesmerize, or showcase

MODELS="fascinate"
WORK=`pwd`
CONTINUE="n"

doit()
{
	echo "$CMD"
	eval "$CMD" 1>"$WORK"/stdlog.txt 2>"$WORK"/errlog.txt
	if [ $? != 0 ]; then
		echo -e "FAIL!\n"
		if [ "$CONTINUE" != "y" ]; then
			exit 1
		fi
	else
		echo -e "Success!\n"
		rm -f "$WORK"/*log.txt
	fi
}

fetch_repo()
{
	echo "***** Fetching code for \"$REPO\" *****"
	if [ $REPO == "fascinate_initramfs" ]; then
		if [ ! -d "Fascinate_initramfs"/.git ]; then
			rm -rf "Fascinate_initramfs"
			CMD="git clone git://github.com/punk-kaos/Fascinate_initramfs.git" && doit
		else
			cd "Fascinate_initramfs"
			git remote add origin git://github.com/punk-kaos/Fascinate_initramfs.git >/dev/null 2>&1
			CMD="git fetch origin" && doit
			CMD="git merge origin/master" && CONTINUE="y" && \
			if ! doit; then
				echo "***** Problem merging \"$REPO\". Redownloading... *****"
				rm -rf "Fascinate_initramfs"
				# loop once P:
				CONTINUE="n" && fetch_repo "$REPO"
			fi
			cd ..
		fi
	else
		if [ ! -d "$REPO"/.git ]; then
			rm -rf "$REPO"
			CMD="git clone git://github.com/jt1134/\"$REPO\"" && doit
		else
			cd "$REPO"
			git remote add origin git://github.com/jt1134/"$REPO".git >/dev/null 2>&1
			CMD="git fetch origin" && doit
			CMD="git merge origin/voodoo-dev" && CONTINUE="y" && \
			if ! doit; then
				echo "***** Problem merging \"$REPO\". Redownloading... *****"
				rm -rf "$REPO"
				# loop once P:
				CONTINUE="n" && fetch_repo "$REPO"
			fi
			cd ..
		fi
	fi
	CONTINUE="n"
}
