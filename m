Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A29DA4C9B
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 08:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722070547; cv=none; b=bsF2ebFICGQWV7kwAouXWnVZfeYnywrOJugmY0DOA+T78Mje5G409XFqV432+NSLv6tGolihMhIw77qM1aItlip7HRusfLwZAvI3CK3b4rDThpsXlRLqE4E7jDYNJU7skymg9mIAGUgYhntuz2UUWv5xCJN28QNZFGHCxvjqzfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722070547; c=relaxed/simple;
	bh=Z7xPRj/wowbtYW2BbsT01gXESgug53xeVMj3PICwvUw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Ynfjjox0dGkr6OtGo6a5bTndoyCb111QGvykghqj+v+PjeIVYntcmV40nFvJKdJSDHIRY1DotEN5SjzKHUlhtz9b2vMJ0Jy5KOeGThJgwJ3KtVfTF+9b/IhfaJraKSH/hooUbPLAFBLxtTVcWBtSrSIEvlpT0REit4FqURPWpFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1722070547;
	bh=Z7xPRj/wowbtYW2BbsT01gXESgug53xeVMj3PICwvUw=;
	h=Subject:From:To:Date:From;
	b=wdvxlIxsXuzkQxL1I7nNQtes/mHgOMptImmiX+PwxTUQevgRzBufr2jU1Z8Vvc56K
	 piGGgOzOKUBWFkLndHyHPMJ8m29OMAIW6XqlWDhKWGIKLERtEuwrhXWlpMXG6yx8mJ
	 BnGjN5vQ866GAwzZHguFc7pxRTqHlxOvRD/hhQ3A=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C671C32781
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 08:55:47 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 55CA0C433E9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 08:55:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.223 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 27 Jul 2024 08:55:47 +0000
Message-Id: <20240727085547.release-5.10.223@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.223
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.223.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.223.xz

Linux kernel version 5.10.223 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.223.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.223.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.223.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.223/v5.10.222

