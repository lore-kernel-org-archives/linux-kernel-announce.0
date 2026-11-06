Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793985924;
	b=V9T8IS7fVwdtIhT16NylGQA5BHI5LtQJu2yufReJHJ1JnX7cvWF3XQ74Llq1W+YdlPn+
	 uGxenSty8HDHu5hk0/sSnU5tncD5RcI7wK0Yu1yUCwUMoa4JHcIZEdjN3dDGuCwgSsFW4
	 eAHGFhDnJIo74GDSWVrjFMyASrQmxcDTn1ddTbYBXJ8IB+kq5y8Gpt0Yh2LC56xKCdY+h
	 39FIEV7287YCH39SK/Zq74cD13/hqxgg5Xe1qBfmkXH1jJlagHARJzA/sWDs3yx8k2f21
	 vgmSGUyc54NLX5X1Aetq2icyH9E+iaeaB2EOypTcbnjPcwVQv3Gxu+ALBCr3GGRTH4A==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793985924;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=F26FSHc73RGVlNvcVstzDs7wBYfZS7/QiQoradttTko=;
	b=1WwBwW3kK/vPgBQwEOrE4mQJqDSzNiSac2lJeCmRBPjhtfLIk6mNgw6sFNwa2oFuNxw3
	 W40AWuh9PHwGJ5aLwGxSo+AbKiFXFdMbzqZWNS+h1bp+ZLiW46az5f6h0x0alXgBC824+
	 nH/2vSIyLdKyTIrvtsahdJvlUVCRT5Dg150AWKLNMmh40ScJqV6PnvZRF9V/DFKmKSPTW
	 drenlBHp8QQpLMAtuiJIt2rXJ4vRSfnsNyjfOVf+Y7SGWXuFopinf9wFOeQZWsx97oYpc
	 fQqc0nFHfsPOy/pcuuebHwTqjFUsTekMVPvy+M/Tp5/6ADu3ZEJD3Z9JE5Id1wExTHA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2E5606A326
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 17:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793985924;
	bh=F26FSHc73RGVlNvcVstzDs7wBYfZS7/QiQoradttTko=;
	h=Subject:From:To:Date;
	b=KxOv/S8nOuA7zH1T/RNT8jGeDHTtJDyu3UzJEebgG0zEgvDpLL+CBrFK01ur5MF1t
	 BnqYc7Z0ZsUEPPok4WwsiMTSLtW//+pbpceHi7s7q1hp1PPAJl2VG6k7k6v+0sIo+6
	 fjzG6zRa9axgI3f8O7S4D7stcBKgkCMY7m3CeakVjTaUHUTP6ioOcCsSYhj4dJqPkU
	 TFn26xmSleQHRl+5c3qsHSi7dzpdxN/oSMMWdwUBnXQokfsLmgdzhGDzJfyghWlz3C
	 hbSZMb3m/n+L0XLZWUST3nB8JHjlGZKVjuiWTJZD9TYOZPyq8yrgqld3KIJLpM06Fj
	 ulI53bhMxC4zw==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E6791F0089F
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 17:25:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id DB4CF3A41004
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 17:25:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Post: <mailto:linux-kernel-announce@vger.kernel.org>
List-Help: <mailto:linux-kernel-announce+help@vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
List-Owner: <mailto:linux-kernel-announce+owner@vger.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.61 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Nov 2026 17:25:22 +0000
Message-Id: <20261106172522.release-6.18.61@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.61
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.61.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.61.xz

Linux kernel version 6.18.61 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.61.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.61.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.61.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.61/v6.18.60

