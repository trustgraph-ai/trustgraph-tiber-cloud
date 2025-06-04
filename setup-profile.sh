
# Put TrustGraph in Profile
cat .bashrc | grep -v trustgraph > bashrc.NEW
echo '. /usr/local/trustgraph/bin/activate' >> bashrc.NEW
cat bashrc.NEW > .bashrc
rm bashrc.NEW

