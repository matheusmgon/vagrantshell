#!/bin/bash

cd WEB/ && echo -e "Desligando BOX WEB\n\n" && vagrant halt && cd .. && cd BANCO/ && echo -e "Desligando BOX BANCO\n\n" && vagrant halt && cd ..

