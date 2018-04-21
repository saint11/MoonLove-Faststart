# MoonLove-Faststart
Some templates and basic engine structure using Lua, Love and Moonscript. Intended to be used specially in game jams such as Ludum Dare and for rapid game prototyping.

## Getting Started
Install both [Love](https://love2d.org/) and [Moonscript](https://moonscript.org/) and make sure they are both in your system PATH. You can check that by opening a console and typing "love" and "moon", they both should give message asking for paramenters.
With that all set, open the ```Faststart.sublime-project``` file and select the "Compile my Project" build system (```Tools > Build System > Compile My Project```) and press Control + B to run your project!

## Here's how the folders are supposed to work:
* **bin:** This is where the .exe or similar will be placed when you pack your game for distribution.
* **game:** Lua files that Löve will use will be placed here by the compiler.
 * **game/assets:** Images, sound and other asset files shoud be placed here.
 * **game/lib:** External libs are placed here.
* **src:** Moon files that will be compiled into Lua files by sublime.

## Usage
First add the root folder to Sublime (Project > Add Folder to Project). Then you can just make your game in the ```src/``` folder, placing your .moon files in there. Select the build Compile Moon and Run Love build system (Tools > Build System > Compile Moon and Run Love) and press Control + B to run your game.

## Utilities
Other libraries included
* [Lume](https://github.com/rxi/lume/): An amazing library full of great utilities for games.

## To Do
There is still a **lot** of things to improve here, here's the main ones for now:
* Make a better engine framework
* Scripts for packing your Love File
* General utilities
* Placeholder assets
