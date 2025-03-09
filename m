Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8AB19DF99
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Mar 2025 09:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741511706; cv=none; b=GOxTDHZhfkmHUgi9RHI6IVrvprwKUhGEpfwGb3B5JmpknVJ8upRHBJH+vlRvZ2CHvTJVYfy0JmBxtlczOradoWJZqiIuxgUWqRxsGJAwTbvmx5lT0ERc99PMUINczozIDv8rMgfSEUbafsvzUEZjmzeZVwYLG/JHUzQUzbV1dXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741511706; c=relaxed/simple;
	bh=sPddfN3bOMbzUr0M984pHy7pJoXlYReUcWeimyYlsJY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=vC7VM6UZthZJJ/iPd0NV9qE2FKcw1qJH4GWfov5Xg5AyKh3PcbJqeI52PQ73LShvVuuTUYCGbIH0+R+X7r7yxOn+LCdtboa6IGwIQMjEc2HHbTm0UyX0adQXwoeHzjVmmHDCwLgYXPd/lFtUvNUgCgIWxCZfMhIvJk9pRrLJ+Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1741511706;
	bh=sPddfN3bOMbzUr0M984pHy7pJoXlYReUcWeimyYlsJY=;
	h=Subject:From:To:Date:From;
	b=fXHsOubTUoFwEO/o2bh4NfVv7hpm4EQeyf+ik/3UKZLEazxYcLSZbZLRofi6A0IQL
	 plbp1JNM9c1XWtgs8DVfIoGUbBnnmEEao2F8p1lZwQjqzC9u2B9phnLG+vGOEwvu7O
	 EjAMz3V136Jib6GfsYCM6RyX4Yee2C9E7RANDz+4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5713BC4CEEC
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Mar 2025 09:15:06 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3B500380CFFD
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Mar 2025 09:15:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.82 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 09 Mar 2025 09:15:39 +0000
Message-Id: <20250309091539.release-6.6.82@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.82
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.82.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.82.xz

Linux kernel version 6.6.82 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.82.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.82.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.82.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.82/v6.6.81

