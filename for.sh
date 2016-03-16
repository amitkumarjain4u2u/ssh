if test -r ~/.ssh/id_dsa.pub || ~/.ssh/id_rsa.pub ; then
           echo "public key exists"
else
           echo "public key doen't exists hence please install ssh and generate public key"   
           exit 0
fi


echo "enter the filepath"
read filepath

script="ls"

if test -f $filepath ; then
   if test -s $filepath ; then
     
	names=$(cut -d ' ' -f1 $filepath)

	for i in "${names[@]}"
	do

	 ssh-copy-id $i
         ssh -l $i "$script"
         ls
	done
else
     echo "file is empty"
fi
else
    echo "file does'nt exists in path specfied (case sensitive)"
fi
