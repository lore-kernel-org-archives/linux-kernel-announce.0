Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB6F4500C
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Jun 2024 12:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719489943; cv=none; b=ArTmZDuiFkdmF1u6uIxFvSTrx060Cuudu9ejYguKaIowb39TS79tQT29m12Q4EqYNBEImSrukGYNx2YoeDtadSPT5wHSOPjgo6zEQf3XN0Hoo7jo4IT8xD4I1hxq6sgT6RpABFEKZQol9WFXmN8V5FJFdPBGs/RjvI7PCzLe4r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719489943; c=relaxed/simple;
	bh=U7GuGRDbDiQHb4mpXBKA9/EOygFVNOL7oxJ8FZ9heIo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=moQEmY7toWrSt838oTMzjAV7E1Wofzc8NaE9opEZlqMnDnPneqg67GyRVoHlkQtufIAfU6sl+pOJdOK1vkFGMXvp1uRSpV8XuZHPFyMzI3pBNnMJ7p5t/fztP1YD66Q0ypyA8wgI1MX09raJFW2MpODYya+5la9gmljU8G0ZDLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1719489943;
	bh=U7GuGRDbDiQHb4mpXBKA9/EOygFVNOL7oxJ8FZ9heIo=;
	h=Subject:From:To:Date:From;
	b=Z1j3IVsUplTqwcmzafH6nn/JO4y6IAO3K5b53BBEPOrsFBIa7gmsGbZUyLR1sXRDJ
	 CqTzruusgyJPzrzhWmOB4LU2W4oA5uml+bdtFCqU7CC4APfRwpzYK8ERFBD5KkBlCu
	 L+wnbqnHDqhn3Depc21Q3VJfg2kt9H7MhDJIi/EY=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4A15DC2BBFC
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Jun 2024 12:05:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 385DBC433E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Jun 2024 12:05:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.96 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 27 Jun 2024 12:05:43 +0000
Message-Id: <20240627120543.release-6.1.96@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.96
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.96.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.96.xz

Linux kernel version 6.1.96 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.96.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.96.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.96.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.96/v6.1.95

