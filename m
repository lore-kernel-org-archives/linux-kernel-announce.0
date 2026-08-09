Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB752192FA
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Aug 2026 18:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786301534; cv=none; b=ckNIplqgXiWbI4GFUuID4SVaJsbrYWy26NLVpDi2IRNvW1aRWJkexxYvzAX3VbPnIELj3zeNllCEFEXNeBE37XYdQg38lQLdNMPT/IQPxXjwLu3hDhGKUsvPGUMWFRGsCCPI1uDm0ehrbDun6PFluMXKO2b+DS8VRQHscxrXxH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786301534; c=relaxed/simple;
	bh=/TIQ2RQQ/RwhIYuOpRqQE7IPutP2BHm+JxFGJLcJVmI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=T2hoaXKrAhV4ZFGGojBWXqrW85KYOQdpAmj5WLK5RyqQCQ5XB0/CfSOAzUavxSO7vB9K2mPhaYAbwTBzstJZ3s0w4J7TNOHwA/o/xDq7Bc+kU9dC9RIQI6Cg6bA5Ad3E/+cmYP1dSEGy7+Xb4S6PXivAYYUjENwpE7a4bNhn158=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786301534;
	bh=/TIQ2RQQ/RwhIYuOpRqQE7IPutP2BHm+JxFGJLcJVmI=;
	h=Subject:From:To:Date:From;
	b=WhUKy6+XBSGTE/y4StLY9BjliG0lQ60djcvIz504iSXr5kolEu4111Und+rzRbqic
	 gIxuIR4U6qbKbsJvKz/PU6i1z2IVZ25/Sg8zYIzbeOAcxhjJ0B6dR0GylSwrvXZflz
	 8ImjcHyd3PkZCRapdnWWspIMgmWUAHHJ9rBEJHms=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B36D1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Aug 2026 18:52:12 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D3A633924470
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Aug 2026 18:51:30 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 09 Aug 2026 18:51:29 +0000
Message-Id: <20260809185129.release-7.1.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.8.xz

Linux kernel version 7.1.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.1.8/v7.1.7

