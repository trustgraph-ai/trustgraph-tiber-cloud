
# Put TrustGraph in Profile
cat .bashrc | grep -v trustgraph-env > bashrc.NEW
echo '. trustgraph-env/bin/activate' >> bashrc.NEW
cat bashrc.NEW > .bashrc
rm bashrc.NEW

