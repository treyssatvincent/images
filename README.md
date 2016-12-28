# images
## Installation
```
git clone https://github.com/treyssatvincent/images.git  
cd images  
chmod a+x *  
```
## Dependencies
- mmv
- imagemagick  
for debian : ``apt-get install mmv imagemagick``

## Fonctions
### gray.sh
Black and white a lot of pictures (jpg, jpeg, png)  
no parameters, just run it in the targeted directory.  
```
cd path/to/targetdirectory  
path/to/gray.sh  
```
### gifmaker.sh
Use all the jpg in a directory and convert them into a gif.
```
cd path/to/targetdirectory  
path/to/gifmaker.sh width height delay  
```
### gifmaker_r.sh
Create a gif for each directory in the current directory.
```
cd path/to/targetdirectory  
path/to/gifmaker.sh width height delay  
```
### cleanjpg.sh
*Outdated*
Clean all potential compromising informations pn your jpg (such as EXIF Geotag, EXIF Thumbnail, and name). It will rename all your affected picture ! Run it on the right directory.
```
path/to/cleanjpg.sh path/to/targetdirectory  
```
or
```
cd path/to/targetdirectory  
path/to/cleanjpg.sh  
```
## License
Copyright © 2016 Treyssat-Vincent Nino
This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the LICENSE.txt file for more details.
