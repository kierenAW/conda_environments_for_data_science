#!/bin/sh
for file in */ ; do 
	if [[ -d "$file" && ! -L "$file" ]]; then
		echo "";
		echo "-----------------------";
		echo "";
		echo "processing $file";
		(cd "${file}" && git checkout master && git pull&& git push)
		echo "";
	fi;
done