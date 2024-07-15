Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9957074409
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jul 2024 05:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721021739; cv=none; b=HnCCaRs8whx/02wPfWQWgeDnzv7IEsutGk6bwq8Qup9s3NOvwS6fo6bDfDW98Iajhkn6sAf0Us1p233H/SDsNZs7mqvGgUkG1ZZcgEuZjkzEEQqjSbiDz9f0fU0d6bZZ6i/vcV8r9GCHw7fomA4/6Q0jutgRH0HgE1xpgqPLLgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721021739; c=relaxed/simple;
	bh=88HuLOTJfVXP8R8u0arnGRKoiROuPSLuYpXFAxlN1po=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=UD2y9mdj6yEJ4p2N5Mo2s8nwN6pAcOPpCkrJbQDgMk+N9Flt8BfNOUPQ2YqGiX/l+629CV8Xr+4qdLnsSc60aQgKpq8c8Gpx6w/TR5x59MsO7x+9QBukZz66+n02IPySgAtMB0xWvSO3jbrsIPgCphzKPABPitiSNgsBU9W7M8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1721021739;
	bh=88HuLOTJfVXP8R8u0arnGRKoiROuPSLuYpXFAxlN1po=;
	h=Subject:From:To:Date:From;
	b=jX4BrMXJSm0PJ63YIF9eb6yO9YYhNmsNQCFnNoGTCenHS+wwEZBu/ozGm2RrxariM
	 cPAyYMnqUJO1vH5oHCHyp0em6Vpwd00hhNqgttxqm9HJcsAAQTVSoomnDsPkLCQ1wk
	 JClTcW+T0b2EUqm6rqwUSebYlID8JGyc6yKWNMXY=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2534EC4AF0A
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jul 2024 05:35:39 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 15CB0C43331
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jul 2024 05:35:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 15 Jul 2024 05:35:39 +0000
Message-Id: <20240715053539.release-6.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.xz

Linux kernel version 6.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.10/v6.9

