install:
	mkdir -p $(DESTDIR)/etc/{default,rc.d}/
	mkdir -p $(DESTDIR)/usr/{sbin,man/man8}/

	cp -vf ./etc/default/pcaps4suid0 $(DESTDIR)/etc/default/
	cp -vf ./etc/rc.d/rc.pcaps4suid0 $(DESTDIR)/etc/rc.d/
	cp -vf ./usr/man/man8/pcaps4suid0.8 $(DESTDIR)/usr/man/man8/
	cp -vf ./usr/sbin/pcaps4suid0 $(DESTDIR)/usr/sbin/

	chmod +x $(DESTDIR)/usr/sbin/pcaps4suid0
	chmod +x $(DESTDIR)/etc/rc.d/rc.pcaps4suid0

uninstall:
	rm -vf $(DESTDIR)/etc/rc.d/rc.pcaps4suid0
	rm -vf $(DESTDIR)/usr/sbin/pcaps4suid0
	rm -vf $(DESTDIR)/usr/man/man8/pcaps4suid0.8
	rm -vf $(DESTDIR)/etc/default/pcaps4suid0
