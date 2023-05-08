
#echo "Installing PythonVEnv"
#sudo apt install -y python3-venv 

echo "Setting ISENV"
python3.6 -m venv env

printf "\nexport ATCISELWORKDIR=`dirname $PWD`" >> env/bin/activate

source env/bin/activate

echo "ATCISELWORKDIR = ${ATCISELWORKDIR}"

pip install --upgrade pip wheel setuptools

pip install -r requirements.txt

deactivate


