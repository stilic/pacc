# Pacc

Pacc (just pronounced as "pack") is a simple and straightforward sprite sheet packer software for mostly game dev projects, but of course, as always, you can use it for anything you like.

## Installation

The only thing you will need is a C compiler (such as `gcc` or `clang`). [stb_image.h](https://github.com/nothings/stb/blob/master/stb_image.h) and [stb_image_write.h](https://github.com/nothings/stb/blob/master/stb_image_write.h) are included in this repo by default. Clone this repo and compile by this command:

```bash
git clone https://github.com/huseynaghayev/pacc.git
cd pacc
make
./pacc --version
```

## Usage

Pacc is used via CLI (currently). To use Pacc, you run the program with optional command line arguments below:

```bash
pacc --space 8 # default: 2
pacc --output my_sheet.png # default: sheet.png
pacc --atlas my_info.json # default: atlas.json
pacc --minify # no whitespaces in .json atlas file
```

After you provide your arguments, program opens and waits for your input (stdin). Therefore, you can pipe your files name into program too. You type your file names in order and once you are done with your row, you press enter. Once you are all done, you press Ctrl + D.

```bash
pacc --space 8 --output my_sheet.png
image1.png image2.png
image3.png
image4.png
# Ctrl + D
```

or with pipe:

```bash
echo "image1.png image2.png
image3.png
image4.png" > my_sprites.txt

cat my_sprites.txt | pacc --space 4 --minify
```

It creates the file and writes into it before terminating. There you have your sprite sheet and atlas.

## Why Pacc?

I named it "Pacc", because it packs your sprites and is written in C. I have searched for a lot of sprite sheet packers, but none of those would fit my needs. This simple program is what I need and hopefully for others too.

## License

This project is in MIT License. See the `LICENSE` file or section for more.
