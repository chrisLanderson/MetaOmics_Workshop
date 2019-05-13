# AEESP 2019 Meta-Omics Workshop
## Materials to help install the provided Anaconda virtual environments on your local computer

The following scripts will install two environments (omics-env and qiime2-env) on your local computer. The two environments include the following software (to see a full list of software and dependencies, open the appropriate \*.yml file above):
 
**omics-env:**   
  - R 3.5 and several common R packages for data analysis
  - Python 3.6 and common python libraries for data analysis
  - DADA2 R package
  - Anvio
  - BWA
  - Bowtie2
  - Centrifuge
  - MCL
  - Muscle
  - Trimal
  - Diamond
  - HMMER
  - Megahit
  - Prodigal
  - Spades
  - Phyloseq R package
  - Vegan R package
  - DESeq2 R package
  - EdeR R package
  - Fastp
  - Quast
  - BLAST

**qiime2-env:**
  - QIIME2 and associated dependencies

Installing the above software plus the dependencies will take ~7GB of storage and ~20 minutes. This can be installed on an external storage device as well. If you have any of these tools already installed on your computer, the miniconda installation script will not overwrite any existing software. During the installation, the miniconda3 directory will be created in the current working directory where you run the script. 

### Mac
In order to download the shell script used for installation, you will need the curl command line tool. I believe this comes installed on every Mac though. I suggest running the following commands to download and run the installation script from whichever directory you wish to install the software.

```bash
curl -Lo conda_install_mac.sh https://tinyurl.com/conda-omics-mac
bash conda_install_mac.sh
```
The above commands will download a few files necessary for installation and software associated with the two environments will begin to be installed into the miniconda3 directory over the next ~20 minutes.

If you are new to using the terminal, the gif of me running the commands on my computer may help so you are aware of the expected outputs to the screen. I stopped the recording once the installation began:
<br>
<br>
![alt text](https://github.com/chrisLanderson/MetaOmics_Workshop/blob/master/mac-3.gif)


Once the installation is complete, two environments (omics-env and qiime2-env) have been installed in the miniconda3 directory. In order to check which environments have been installed, you can run:

```bash
miniconda3/bin/conda info --envs
```
In order to utilize the software, you must activate the environment you want to use. Run the following command to activate the omics-env:

```bash
miniconda3/bin/activate omics-env
```

You will note that the name of the activated environment appears to the left of your terminal prompt. Now, the software installed in this environment is available to you. To list all the software available, run:

```bash
miniconda3/bin/conda list
```

The installed software is in your path, meaning you don't need to include the full path to the location of the software. Below is an example of showing the help screen for an Anvio command:

```bash
anvi-profile -h
```

Two environments cannot be activated at the same time. First, you must deactivate the current environment:

```bash
miniconda3/bin/deactivate
```

Then, you can activate another environment:

```bash
miniconda3/bin/activate qiime2-env
```

Once activated, you can view the QIIME2 plugins that have been installed:

```bash
qiime --help
```
Deactivating an environment or closing the current terminal is recommended once you are done with your current session.

```bash
miniconda3/bin/deactivate
```

Below is another gif demonstrating the activating and deactivating of both environments:
<br>
<br>
![alt text](https://github.com/chrisLanderson/MetaOmics_Workshop/blob/master/mac-4.gif)

### Linux
The installation process will be nearly identical to those above for Mac users. The only difference is downloading a different shell script specific for installing on a Linux operating system (must be 64-bit architecture). In order to download the shell script used for installation, you will need the wget command line tool. I believe this comes installed on most Linux distributions. I suggest running the following commands to download and run the installation script from whichever directory you wish to install the software.

```bash
wget https://tinyurl.com/conda-omics-linux -O conda_install_linux.sh
bash conda_install_linux.sh
```
The above commands will download a few files necessary for installation and software associated with the two environments will begin to be installed into the miniconda3 directory over the next ~20 minutes.

If you are new to using the navigating the terminal, the gif of me running the commands on my computer above help so you are aware of the expected outputs to the screen.

Once the installation is complete, two environments (omics-env and qiime2-env) have been installed in the miniconda3 directory. In order to check which environments have been installed, you can run:

```bash
miniconda3/bin/conda info --envs
```
In order to utilize the software, you must activate the environment you want to use. Run the following command to activate the omics-env:

```bash
miniconda3/bin/activate omics-env
```

You will note that the name of the activated environment appears to the left of your terminal prompt. Now, the software installed in this environment is available to you. To list all the software available, run:

```bash
miniconda3/bin/conda list
```

The installed software is in your path, meaning you don't need to include the full path to the location of the software. Below is an example of showing the help screen for an Anvio command:

```bash
anvi-profile -h
```

Two environments cannot be activated at the same time. First, you must deactivate the current environment:

```bash
miniconda3/bin/deactivate
```

Then, you can activate another environment:

```bash
miniconda3/bin/activate qiime2-env
```

Once activated, you can view the QIIME2 plugins that have been installed:

```bash
qiime --help
```
Deactivating an environment or closing the current terminal is recommended once you are done with your current session.

```bash
miniconda3/bin/deactivate
```

### Windows
For Windows users, we suggest setting up a Linux environment on your computer, using another computer in your lab or department, or using a server available at your institution. Most bioinformatic tools tend not to be compatible with Windows operating systems and while Windows is supported by Anaconda, many of the common bioinformatic packages do not have recipes for Windows. This appears to be a good resource to help you get started: https://github.com/kapsakcj/win10-linux-conda-how-to.

### How do I install more software or create my own environments?
For those seeking smaller installations or to install more software within the provided environments, I encourage you to read the excellent Anaconda documentation to install Anaconda / miniconda and learn to set up virtual environments: https://docs.anaconda.com/anaconda/. If you are still experiencing issues after going through the documentation, file an issue and I can try to help.

### Issues?
If you are having issues installing the environments, activating them, or running the software, please file an issue in this repository and I will try to help! Some users have experienced losing an internet connection with the Anaconda repository while downloading the software, leading to an error. This error occurred <5% of the time I tested the installation, so I recommend deleting the miniconda3 directory that was created and re-running the installation script.


