Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D78279903
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Jul 2026 15:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784387778; cv=none; b=HiqCQfrDIMvr28zfOfFi7UHET5rGbgHd8nVV00k92hU3lvmSWx6Y3G9tF7n0Zu8mbenBv9YJTCV0yMLFps+VWuPahp2oH/qBDGsyTtkbXIROX5OKpBEauP6igP+lt8BBC2s8TjMXr+h0a/z6lZoMx2lhE8Fzhn7jVO1irsbUgQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784387778; c=relaxed/simple;
	bh=p4Oq4NVK+JVWPeiVc7KJ/PaapRldMXWSK+QDsjZMtDE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=izI64PHTXXr4EXA6udkXQZts6ppFGQ8XJY3KsMAsU2yxVenZlbPda9KLzuNNumDu3DFlc2hf2V+jV14OKsKbC2C3HkNoMtUMPgynllhAGo8kTraALCVHXmvy6LGxQiwrBRNZNi93vxJAXsrditWaKtnWCmLBNq1seRE6BSvnKeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1784387778;
	bh=p4Oq4NVK+JVWPeiVc7KJ/PaapRldMXWSK+QDsjZMtDE=;
	h=Subject:From:To:Date:From;
	b=p5NKnETkN2pTg89vINj+rhlVyu3v2sW2Eto2pkHRVuTGYOYY64MOMQKyOf9MWqIW3
	 HbmaUr3YMwTcXb5dijGodF9YlHKo9shL3+YRUGO0U7d7IZRNCxb5ia8NRorZsWBbVG
	 m2NwQbZI7YBscwcOhkDgiL5eWe5Kf2Xk06xKriKI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFC3A1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Jul 2026 15:16:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 96BC53811977
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Jul 2026 15:15:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.39 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 18 Jul 2026 15:15:49 +0000
Message-Id: <20260718151549.release-6.18.39@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.39
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.39.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.39.xz

Linux kernel version 6.18.39 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.39.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.39.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.39.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.39/v6.18.38

