BEGIN{
}
{
        #find the directory in the list
	isdir = "[ -d " $1 " ] "

	#rename file names
        scriptname="move"
	awkscriptname ="findmove.awk"
         
	#move file names
	movefile=$1
        
	#moving directory location
	desc="/root/shellscripts/awkscript"
        
	#won't change the wroking files
       	if (movefile == scriptname || movefile == awkscriptname)
	next

	# if the list is directory don't move
	else if( (system(isdir) == 0 ))
	{
		printf "%s is directory can't move\n", movefile
		next
	}
	else{
            mvcmd = "mv " movefile " " desc
	    printf "%s Files Moved successfully to  %s\n",movfile,desc
	    system(mvcmd)
    }
}
END{
}
