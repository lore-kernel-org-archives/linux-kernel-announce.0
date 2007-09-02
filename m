From: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [Bugme-new] [Bug 8966] New: NFSv3 server error in LOOKUP after
 READDIRPLUS Call
Date: Sun, 2 Sep 2007 14:01:33 -0700
Message-ID: <20070902140133.a5e7b3d5.akpm@linux-foundation.org>
References: <bug-8966-10286@http.bugzilla.kernel.org/>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
In-Reply-To: <bug-8966-10286@http.bugzilla.kernel.org/>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Michal Piotrowski <michal.k.k.piotrowski@gmail.com>
Cc: linux-kernel-announce@vger.kernel.org, Trond Myklebust <trond.myklebust@fys.uio.no>, peter.kovar@gmail.com

> On Sun,  2 Sep 2007 10:55:01 -0700 (PDT) bugme-daemon@bugzilla.kernel=
=2Eorg wrote:
> http://bugzilla.kernel.org/show_bug.cgi?id=3D8966
>=20
>            Summary: NFSv3 server error in LOOKUP after READDIRPLUS Ca=
ll
>            Product: File System
>            Version: 2.5
>      KernelVersion: 2.6.23-rc?
>           Platform: All
>         OS/Version: Linux
>               Tree: Mainline
>             Status: NEW
>           Severity: normal
>           Priority: P1
>          Component: NFS
>         AssignedTo: trond.myklebust@fys.uio.no
>         ReportedBy: peter.kovar@gmail.com
>=20
>=20
> Most recent kernel where this bug did not occur: 2.6.22.6
> Distribution: Fedora release 7.91 (Rawhide)
> Hardware Environment: Intel Core 2 Quad
> Problem Description: ls NFS automounted directory through UDP or TCP =
returns
> NFS3ERR_NOENT error in LOOKUP reply for directories such as /dev /net=
 /proc=20
>=20
> Steps to reproduce:
>=20
> =E2=82=AC ls -l /net/Quad
> total 432
> ?---------    ? ?           ?        ?            ? /net/Quad/boot
> ?---------    ? ?           ?        ?            ? /net/Quad/dev
> ?---------    ? ?           ?        ?            ? /net/Quad/misc
> ?---------    ? ?           ?        ?            ? /net/Quad/net
> ?---------    ? ?           ?        ?            ? /net/Quad/proc
> ?---------    ? ?           ?        ?            ? /net/Quad/sys
> drwxr-xr-x    2 root        root  4096 Aug 31 17:18 bin
> drwxr-xr-x  129 root        root 12288 Sep  2 18:09 etc
> drwxr-xr-x    7 root        root  4096 Aug 21 23:30 home
>=20
> It the same in whole 2.6.23-rc? series as well as latest Fedora kerne=
l with
> identical configuration. 2.6.22.6 is OK.
>=20
> =E2=82=AC uname -a
> Linux Quad 2.6.23-rc1 #1 SMP PREEMPT Sun Sep 2 17:40:25 CEST 2007 x86=
_64 x86_64
> x86_64 GNU/Linux
> Linux Quad 2.6.23-rc2 #1 SMP PREEMPT Sun Sep 2 14:57:57 CEST 2007 x86=
_64 x86_64
> x86_64 GNU/Linux
> Linux Quad 2.6.23-rc3 #1 SMP PREEMPT Sun Sep 2 15:01:02 CEST 2007 x86=
_64 x86_64
> x86_64 GNU/Linux
> Linux Quad 2.6.23-rc4 #1 SMP PREEMPT Sun Sep 2 14:59:25 CEST 2007 x86=
_64 x86_64
> x86_64 GNU/Linux
> Linux Quad 2.6.23-rc5 #1 SMP PREEMPT Sat Sep 1 12:52:16 CEST 2007 x86=
_64 x86_64
> x86_64 GNU/Linux
> Linux Quad 2.6.23-0.149.rc4.fc8 #1 SMP Wed Aug 29 07:37:52 EDT 2007 x=
86_64
> x86_64 x86_64 GNU/Linux
>=20
> gcc-4.1.2-19
> binutils-2.17.50.0.18-1
>=20

A post-2.6.2 regression.
-
To unsubscribe from this list: send the line "unsubscribe linux-kernel-=
announce" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
