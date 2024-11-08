#ensure platinum submodule has been cloned
git submodule init
git submodule update --remote

#cd into platinum Sub project
cd extern/platinum
git checkout tinyupnp

#pull Neptune Runtime subproject
git submodule init
git submodule update 

#Build
scons

#install executable
cd dist
chmod +x ./tinyupnp
sudo cp tinyupnp /usr/bin/

echo "Installation Complete. Start with 'tinyupnp' in a shell"

