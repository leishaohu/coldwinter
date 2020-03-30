# Cold Winter

What i've done in this cold winter of 2019:
Use emacs to wirte **latex**, **markdown**, **python**, **org**, and **git**.


## Emacs first

I make a summary about what I've learned about emacs up to 2020.3.30.And I push the configuration file to github `init.el`
![image](https://github.com/leishaohu/coldwinter/blob/master/pic/pic1.png)
I don't know how to insert a picture in markdown and i'm trying it.

## Python Virtual Environments: A Primer

### Using VIrtual Environments 

Start by making a new directory to work with:

	shell
	$mkdir python-virtual-environments && cd python-virtual-environments
	
	
Create a new virtual environment inside the directory:

	shell
	#python 2:
	$ virtualenv env
	
	#Python 3
	$python3 -m venv env 
	
In the above example, this command creates a directory called env, which contains a directory structure similar to this:
