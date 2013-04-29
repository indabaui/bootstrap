build: 
	lessc cyborg/cyborg.less out/cyborg.css --include-path=bootstrap
	lessc cosmo/cosmo.less out/cosmo.css --include-path=bootstrap

clean:
	rm -rf out

updateBootstrap:
	git clone git://github.com/twitter/bootstrap.git tmp-bootstrap-repo
	rm -rf bootstrap
	mv tmp-bootstrap-repo/less bootstrap
	rm -rf tmp-bootstrap-repo

.PHONY: build clean updateBootstrap
