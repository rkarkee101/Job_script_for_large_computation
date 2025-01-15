# Job_script_for_large_computation

In some cases like Phonopy, Phono3py, ShengBTE and FourPhonons, we have a large input files. 
There is also HPC time limit as well as space limit in most cases.

This script generates multiple job scripts from the base job, and also can remove some files during job progression, which may help tackle space issue.

There is also a separate bash file that submits all the jobs together.
