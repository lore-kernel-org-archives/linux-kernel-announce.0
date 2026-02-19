Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9108934A3D8
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771516529; cv=none; b=OfjOifwstP8EyrJUyWSioF7QLeSLErdtam6PKMmusTtiKhInGTjGKRkjPGCUpV0muPgIFY2xy5gJG2l3vA45ukwg4AKeLymIV0G1PLWTaK4oOdcZBn7x0evcmBxMp1jVNLeAmDjzMGikmA3iq4lNA2/5vmusOrhytWpAvI7WanQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771516529; c=relaxed/simple;
	bh=mHxCSvjoqMspMYuEhOQFvq8DzjCkgkI3zmuMML68Ju4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Vu6Qi8mWw6USAdEKnmPfcU6NUQ2poCTRHISFZAf8stB7h7LaUQGmYYSpHjzR2K5P2mDWLctABuwQMDunfccRqXdgFp6SFKyy/4NjTUmM1yYQ9G1vOgrKeCC5GBwqjda0wD7t5ew7aXV/waXKT0A6J9XWfIKbyyXTDe4xdJgbW30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771516529;
	bh=mHxCSvjoqMspMYuEhOQFvq8DzjCkgkI3zmuMML68Ju4=;
	h=Subject:From:To:Date:From;
	b=TSzg/1fha48THqjmAYKi9KiQRTJMEZsqr0s/121Y5FjO+ztHgT4oHeoug2s8UN2ox
	 B1va+lEtthIbdzcyBXuqtRy1mguXeK27ZyCrs7F20460c5Zm7lx9azOr1A9KmrruBL
	 iw70fYA8lRuOHhJJ11noCIQtEGXr8Ar/+dbqOedk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F4A3C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:55:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 850D5380CEF6
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:55:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.74 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Feb 2026 15:55:20 +0000
Message-Id: <20260219155520.release-6.12.74@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.74
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.74.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.74.xz

Linux kernel version 6.12.74 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.74.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.74.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.74.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.74/v6.12.73

