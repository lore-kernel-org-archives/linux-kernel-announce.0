Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51CF480959
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 12:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788352584; cv=none; b=HpAI31JxYvNlZ7f/AjQAdcSa5tQwOgmLgT92E6ZiX/KPixXfMm3FsyOnKEOVkR3e6OA5OxmU5+Mf4NriYjGPq6sVfX421syp+CTXqMour++1Xd4YFb2RTiCwBTiQXCFV8/P9ttqXfoIeDiptcV0iWUMXTbRwNKXxcUcwHSmPrNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788352584; c=relaxed/simple;
	bh=ntFVNaiKQaCwHbVbkGxVg99ISguqmCUjpSro9M44v28=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ejcxu2IGMuSLiq+x5COPIiZgzaK6kyKi+g9mINpvhCv3WeZXGvAtv99IhVFyk4nRhGrYrq748Vy7q0niD13bhQqiQeyReapLI48Aul5IctwYUtyeU/QvAo7SFil7yM+7xNjjSOLHCKE7sQCakI5+tTZ/ZsvqtArfMJgk93DI3pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1788352583;
	bh=ntFVNaiKQaCwHbVbkGxVg99ISguqmCUjpSro9M44v28=;
	h=Subject:From:To:Date:From;
	b=paOcwUtLsJ5U4/W9nhmy7Vq8vQx+OOdk6VGJpNIbEKtFGzvH9eh6+0CTodXh6ss5u
	 d8OzUKuWbIHDZo7lX+pbWKzmdoiZr78wh+WtQ+1kpgVfhtWfAEGULa5ni8N/cz96bB
	 f2F8Do1dHH25l85q8bd3vaVg1MSgahsk/Y7GHHbU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AE721F000E9
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 12:36:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9645A39263AF
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 12:35:25 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.269 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 02 Sep 2026 12:35:24 +0000
Message-Id: <20260902123524.release-5.10.269@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.269
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.269.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.269.xz

Linux kernel version 5.10.269 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.269.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.269.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.269.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.269/v5.10.268

