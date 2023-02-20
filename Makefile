all: etc/yoyo-os/issue etc/yoyo-os/issue.net etc/yoyo-os/lsb-release etc/yoyo-os/os-release

etc/yoyo-os/issue: src/issue.sh
	bash $< > $@

etc/yoyo-os/issue.net: src/issue.net.sh
	bash $< > $@

etc/yoyo-os/lsb-release: src/lsb-release.sh
	bash $< > $@

etc/yoyo-os/os-release: src/os-release.sh
	bash $< > $@

clean:
	rm -f etc/yoyo-os/lsb-release etc/yoyo-os/os-release