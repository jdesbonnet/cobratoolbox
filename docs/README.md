# Building cobtratoolbox documentation

This procedure has been tested on Ubuntu 18.04. From the 'docs' subdirectory:

```
sudo apt update
sudo apt install -y git python-pip
pip3 install -r requirements.txt
make html
```

Output HTML documentation will be in directory ./build/html

Also see Dockerfile as a more convenient way of buildings docs (procedure TODO).

To publish the updated documentation on the cobratoolbox website at 
https://opencobra.github.io/cobratoolbox/stable/
checkout the gh-pages branch of the https://github.com/opencobra/cobratoolbox.git repository
and replace the ./stable or ./latest directory with the build output.

