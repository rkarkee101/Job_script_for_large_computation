# Job_script_for_large_computation

In some cases like Phonopy, Phono3py, ShengBTE and FourPhonons, we have a large input files. 
There is also HPC time limit as well as space limit in most cases.

This script generates multiple job scripts from the base job, and also can remove some files during job progression, which may help tackle space issue.

There is also a separate bash file that submits all the jobs together.


# Instructions on running the script

Make the necessary changes in original sample job file as per your systems and filenames.

Edit the generate.sh script, you just need to edit step and end. You can also edit  "%04d" depending on your input files. For i =1, this generates 0001 and "%03d" generates 001, and so on.

Then run ``bash generate.sh`` or first do ``chmod +x generate.sh`` and then ``./generate.sh``

Similarly for ``bash submit.sh`` or ``chmod +x submit.sh`` and then ``./submit.sh``

