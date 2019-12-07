
# JustMyPassword

JustMyPassword is a iOS jailbreak tweak that remove the password length requirement
when adding a card in Wallet App on iOS 13.

If you use 4-digit password, iOS 13 won't let you add a new card in the Wallet App,
It says "6-Digit password required" for security reasons. But I just want use a short password, 
bacause the FaceID is not always valid, especially when you lying in the bed. JustMyPassword
will allow you to skip that step.

JustMyPassword has nothing to do with how you change the password. If you are using 6-digit 
password and having a card in the wallet, there will be no option to set to 4-digit password
in the "Settings/ Face ID & Passcode/ Change Passcode". You should remove the cards the wallet,
and then 4-digit password option will be available. 

When cards added, you could just remove JustMyPassword, because it only hook the adding process.

Works on iOS 13.

<p align="center"><img src="/etc/screenshot.png" width="300"></p>


## Usage

### Published Package

Publish on Packix Repo (https://repo.packix.com). Install with Cydia or other similar package manager

### Compile yourself

1. clone the [theos](https://github.com/theos/theos) with `git clone --recursive https://github.com/theos/theos.git`
2. clone this repo to another path
3. cd into JustMyPassword, and `export THEOS=/Path/to/theos`
4. `FINALPACKAGE=1 make package`. Or using `make package install` to direct install to your phone if 
    you have ssh on your phone and `export THEOS_DEVICE_IP=` set.


## Liscese

MIT
