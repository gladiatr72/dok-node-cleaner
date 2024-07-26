# a kubernetes node should not spawn with a root volume that is 80% full

This daemonset runs `./script.sh` on every node that joins the cluster.  It takes a 25GiB root vol from 73% disk use to 24%.


```

Filesystem      Size  Used Avail Use% Mounted on  <- before
/dev/vda1        25G   17G  6.6G  73% /mnt
--
Filesystem      Size  Used Avail Use% Mounted on  <- after
/dev/vda1        25G  5.5G   18G  24% /

```

Thanks, DO.
