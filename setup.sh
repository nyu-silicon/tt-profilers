sudo apt update -y && sudo apt upgrade -y
sudo snap install cmake --classic
sudo apt install git ninja-build libhwloc-dev libnuma-dev libgtest-dev python3-dev patchelf libc++-12-dev -y

wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 20

#insteall tenstorrent
./build_metal.sh --without-distributed
./create_venv.sh

export TT_METAL_HOME=~/tt-metal
mkdir -p ~/sim
cd ~/sim

wget https://github.com/tenstorrent/ttsim/releases/download/v1.16.0/libttsim_wh.so
wget https://github.com/tenstorrent/ttsim/releases/download/v1.16.0/libttsim_bh.so
wget https://github.com/tenstorrent/ttsim/releases/download/v1.16.0/libttsim_qsr.so
