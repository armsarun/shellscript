BEGIN{
	}
{
           #find the directory in the temp file

	    isdir1 = "[ -d " $1 " ] "
	    isdir2 = "[ -d " $2 " ] "

	    #get the script name

	    scriptname = "up2low"
	    awkscriptname = "rename.awk"

	    sfile = $1
	    dfile = $2
	    
	    # don't rename the source file(up2low and rename)

	    if ( sfile == scriptname || sfile == awkscriptname )
	    next

	    # is isdir is directory then skip and display the messafe

	    else if( ( system(isdir1) ) == 0 || system((isdir2)) == 0 )
	    {
	       printf "%s or %s is directory can't rename it to lower case\n",sfile,dfile
	    next
	    }
	    else if ( sfile == dfile )
	    {
	        printf "Skiping, \"%s\" is already in lowercase\n",sfile
	     next
	    }
            else
	    {
                mvcmd = "mv " sfile " " dfile
	       	printf "Renaming %s to %s\n",sfile,dfile													      system(mvcmd)
            }
}
END{
}
