

## Launch a local server.  Check the console output
#  for the address
serve: themes/ananke/README.md
	hugo serve

themes/ananke/README.md:
	git submodule update --init

## Deploy a copy to Aaron's UW web publishing account:
## http://staff.washington.edu/amarburg/cabled_array_hw2018/
ovid:
	hugo -b http://staff.washington.edu/amarburg/cabled_array_hw2018/ -d public_ovid
	rsync -e ssh -aPvc public_ovid/ ovid:public_html/cabled_array_hw2018/

github:
	./publish_to_ghpages.sh

PHONY: ovid github serve
