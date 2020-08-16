This is my private Repo with Software I use, but either I can't find it in portage, or it's lagging behind in versions.

A few steps are necessary to use the Repo.

```bash
cd /var/db/repos
git clone https://github.com/sisihagen/portage sisi
```

Then need to make it usable for portage with a file in /etc/portage/repos.conf

```bash
echo "[sisi]" > /etc/portage/repos.conf/sisi.conf
echo "location = /var/db/repos/sisi" >> /etc/portage/repos.conf/sisi.conf
```

If you like to use layman to automate it:

```bash
layman -f -o https://raw.githubusercontent.com/sisihagen/portage/master/repositories.xml -a sisi
```


Now it's ready to use. Have fun with Gentoo Linux!

