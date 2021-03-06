#! /usr/local/bin/fish
# Restart snowpack dev when it crashes

set snowpack (npm bin)/snowpack

# install modules if needed 
if not test -e $snowpack
    npm i 
end 

source (npm root)/../.env

while not $snowpack dev
    echo 'Snowpack exited...restarting...' >& 2
    sleep 1
end
