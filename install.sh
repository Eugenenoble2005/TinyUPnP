#ensure platinum submodule has been cloned
git subproject update --remote

#cd into platinum Sub project
cd extern/platinum

#pull Neptune Runtime subproject
git submodule update --init

#Build
scons

#install executable
cd dist
chmod +x ./tinyupnp
sudo cp tinyupnp /usr/bin/

echo "Installation Complete. Start with 'tinyupnp' in a shell"

