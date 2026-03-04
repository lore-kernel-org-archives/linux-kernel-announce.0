Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E0426AF4
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772631618; cv=none; b=K3UfYHRDpX7pJjS/YYQjicCWPe3+FSgHzl1J2oYJmOGhBF3iZb5uPEaM1pEacN+ICYTNZ92ObVhl4W7OB8Yb+LcqwK8Dv1Hti3DS52+FAry7AfWzhCsfVVQsueXeFoCBfE2iPcAUGBbmFZ2IzWx6ZRLXsWvobAB/O8S6/RhqC8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772631618; c=relaxed/simple;
	bh=tuy+JbIt1He0PQpFgvLH8hff5NQEBn+MY+wJPmL/scw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=U1gocp6Z+gy4hut6LR0l9E5DQn84jhsNhxRtDX8U2nPogmsOHhKXGb0pSPbCIwGobVktn56x6vPbSyBqQE6QxasYaCcA4juQSupv4JdWnOYJk+ChnuS5JBvIjQsQPSyPke/G8Fm0TiqaTjNNItx6KSZqnf8qkiPP5u1W2+mGdCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1772631618;
	bh=tuy+JbIt1He0PQpFgvLH8hff5NQEBn+MY+wJPmL/scw=;
	h=Subject:From:To:Date:From;
	b=WSLq//JFj+idKQGCguoRi8AyXQlsbI5gA8JObNOYPLhRRQrbHfkkSOoS2onMsqEcU
	 lAuafoKvuQeDeOvoQbUEcQzOe+rkyR/+/kieo5DnPwwoO0ew9m6/OOuCauz45Xwj1s
	 2vLdJzLY7cper/C/8ZULMuVFNqvsFJyN/xHOcp3I=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6295BC19423
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:40:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 429733808200
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:40:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.202 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Mar 2026 13:40:18 +0000
Message-Id: <20260304134018.release-5.15.202@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.202
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.202.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.202.xz

Linux kernel version 5.15.202 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.202.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.202.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.202.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.202/v5.15.201

