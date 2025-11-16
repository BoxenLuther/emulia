#! /usr/bin/env bash
cd "$(dirname $(realpath $0))" && javac -classpath src/ -d bin/ src/boxenluther/emulia/Main.java && sudo java -classpath bin/ boxenluther.emulia.Main "$@"
