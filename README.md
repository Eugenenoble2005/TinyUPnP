## TinyUPnP.
Simple zero config upnp media server for linux computers. No configuration, no systemd, no gui. Just install and run the program to start the server in a particular directory and watch anime on your tv or any media renderer including DLNA Compliant renderers. This is a distribution of [Plutinosoft's Platinum](https://github.com/plutinosoft/Platinum).


## Installation
Build Dependencies are gcc,scons and python. Scons is a python build tool that is available in most Distro's repos. Installing scons should also install it's python dependency.
# Arch
```
sudo pacman -S scons
```
You can also install scons with python's pip if you do not want to install it from your distro's repos or if it is not available.
```
python -m pip install scons
```

## Build
After installing all dependencies, proceed to clone recursively and run the installation script.
```
git clone https://www.github.com/eugenenoble2005/tinyupnp.git --recursive
cd tinyupnp
chmod +x ./install.sh
./install.sh
```

## Usage
You need only run the program from any shell and specify a content directory.
```
#will serve the current directory 
tinyupnp

#will serve the /home absolute directory
tinyupnp /home

#will serve the videos relative sub directory
tinyupnp videos

```

While the server is running, all files in the chosen directory will be made available to UPnP media renderers across the local network. Note that only supported MIME types (practically the most used Video, Audio and Image file formats) will be picked up by the renderer for playback.

