# If bash command fails, build should error out
set -e

##### Install specific package versions with pip #####

# pip3 install pandas==0.22.0
# pip3 install matplotlib==2.1.2
pip3 install scikit-learn==0.19.1


#Add file
DATADIR=datasets/
mkdir -p $DATADIR
wget -O $DATADIR/members.csv https://assets.datacamp.com/production/repositories/3365/datasets/0dfd9cf73134137fc9e7abcbdce4a3d8af269ae9/members.csv


