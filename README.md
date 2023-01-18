# proxmox-packer

## Prerequisites
Things you need before starting:
* `Proxmox server`
* `Packer 1.8`

## Project structure
```
proxmox-packer
└── scripts
     └── setup.sh
└── ubuntu-22-04
     └── ubuntu-server.json
     └── vars.json
     └── files
          └── 99-pve.cfg
     └── http
          └── meta-data
          └── user-data
```
## Tasks to accomplish
- The idea of this project is to create `packer` vm templates for `proxmox`.

## How to setup this project locally
- First we should download it with either `git clone` or as `.zip`.
- Then we will execute `setup.sh` in order to install `packer 1.8`.
- Then you will have to modify `vars.json` with your `proxmox` data.

## How to run it
- Once you have everything ready, we can check if our config is valid:
````
$ packer validate -var-file=vars.json ubuntu-server.json
The configuration is valid.
````
- Then to build it:
````
$ packer build -var-file=vars.json ubuntu-server.json
````

## Notes
- I have included a way to debug `packer` in `setup.sh` just in case there is any problem you can check the log out. If you wanna make it permanent, you will just have to add it to your `.bashrc`.
- I have tried more up to date `packer` versions but there is a bug where you can not select `vmdk` nor `qcow2` as vm image format. It will just accept `raw`.
- I will include more templates in the future.
