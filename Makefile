install:
	mkdir -p $(DESTDIR)/etc/{default,rc.d}/
	mkdir -p $(DESTDIR)/usr/{sbin,man/man8}/

	cp -vf ./etc/default/capabilities $(DESTDIR)/etc/default/
	cp -vf ./etc/rc.d/rc.capabilities $(DESTDIR)/etc/rc.d/
	cp -vf ./usr/man/man8/capabilities.8 $(DESTDIR)/usr/man/man8/
	cp -vf ./usr/sbin/capabilities $(DESTDIR)/usr/sbin/

	chmod +x $(DESTDIR)/usr/sbin/capabilities
	chmod +x $(DESTDIR)/etc/rc.d/rc.capabilities

uninstall:
	rm -vf $(DESTDIR)/etc/rc.d/rc.capabilities
	rm -vf $(DESTDIR)/usr/sbin/capabilities
	rm -vf $(DESTDIR)/usr/man/man8/capabilities.8
	rm -vf $(DESTDIR)/etc/default/capabilities
