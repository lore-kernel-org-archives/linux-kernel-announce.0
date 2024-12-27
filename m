Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9901B1D319B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Dec 2024 13:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735305924; cv=none; b=qZw4BYj9n5n81MpRjPcHm+2o5WLLNVjxsxRkuM7g05cNySOi8xcNKCbwunSCnmJreWnBTwKm+GandnOpem3IwfjihcGaD/XZ7rXS+8lcPQhK4gvJZKsN2BrXHiyEHlzL3MvGfLjgx2ksNPFw5ypiKebslJxSq90J6M3yb9IWbJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735305924; c=relaxed/simple;
	bh=cKuw4jFsQtxkgCwwTBBOqlXqu8dFNItSODO4DVYqWtA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Tddr4X9MB+fv3HsZCHljNg7H0FLi3F9VcBOt6rI3k54tk5Ms/kH3JkGwIYMGEUSF1pStO43j31h/oGiyDzSqYNo8MNfK4352TiI7XVPhWTlkR7NDtVZ6DmHSSWzszvyBmi629p1jT2d8KZY+lAtLJ/Q6/N2wiLF2+7F0Gg65TlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1735305924;
	bh=cKuw4jFsQtxkgCwwTBBOqlXqu8dFNItSODO4DVYqWtA=;
	h=Subject:From:To:Date:From;
	b=qf1/AWz6Q0VvrCzFneZl1Fyaf9oSeN8qgFHJK3Dx9cpjvQI/3Q2xST9H5OuHEnRZ/
	 rompRIXXmkAnPWiSUjyMLrSOyNXUg/uAm3tfxgHL2i29CB/dwJuUZTyuNcpJaYek7g
	 zm+pYm4QU3AqUaYOakX7FoMcLgP4o8xW5oFAkOrc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32542C4CED0
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Dec 2024 13:25:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 77CCE380A955
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Dec 2024 13:25:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 27 Dec 2024 13:25:43 +0000
Message-Id: <20241227132543.release-6.12.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.7.xz

Linux kernel version 6.12.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.7/v6.12.6

