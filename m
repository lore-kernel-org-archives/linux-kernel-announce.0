Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408FBF4EB
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Aug 2024 07:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722669365; cv=none; b=R2ACrmTJmprBdpL1bHCSG5ETARGRPhnO+dn76zyMSzIO8dr/aMnxnQjQjhxlNWOQ+N1L+qIb/94ZJjHzmW93AsIeqjbHVTrecBl520OilmZiHzKJkApNsC2SWrFLPeT7oFqDStooyV8b47O3pLai9Y5v8iJE1zPWIjpMs/gdKR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722669365; c=relaxed/simple;
	bh=67I4/aDDsREpmiBHvuFZVJcg8Y0LvjdBly/l3mpQ69g=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XR1cfDMb8JsN3yB1GnyUgFFCzOrimXE8LMD3q2Ls66hOxLtn0EYH07yyGgf7CZyXALtrhWZGGxv2+FEFdzV6s0J5yJX0/NPDoSIeOFJebYJ4/fzQglw6wRXUYltYI6gdmX4EF/YrgxGzIjIIXTd4vjMZvzfyPi95tgfyo196u2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1722669365;
	bh=67I4/aDDsREpmiBHvuFZVJcg8Y0LvjdBly/l3mpQ69g=;
	h=Subject:From:To:Date:From;
	b=ACL+svS1Pn7fUr0PIqXl0oEotbbMHGrd+tDu9MovxTmvqxI1078womYfsXon1GK6j
	 gDxJt51b42uJ39icSse++eRsy2nXEtYP663Qh8Pih2l3E1UvyCYl3xOJVezCpLD+/o
	 NA6AtqpiGcYih3pvqJu9cqGh+caeW4vJVm0Vtr/I=
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E21C4AF0A
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Aug 2024 07:16:03 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id ACD8BC433F2
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Aug 2024 07:16:03 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 03 Aug 2024 07:16:03 +0000
Message-Id: <20240803071603.release-6.10.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.3.xz

Linux kernel version 6.10.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.10.3/v6.10.2

