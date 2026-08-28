Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0401D3CB911
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787899607; cv=none; b=geaz/XeXJKgWhjVFyEg7M+W8LWBtX5Hk0Rfx7l4/SMODggHxn4cGk3OcBmPdXrw1t0Qby2ajzm61q2J/jtF7qoxEAPQXf5SM3nnj29xrwq8a7oniBEBML6m85UUHUZVP5o5wxG4ghwqHZxE9WFIp9wl4WSNHd2YxSHK3Jx2i4KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787899607; c=relaxed/simple;
	bh=Z/XHOPBo8QaMpgdG48j5byxtWuWp6kbjhlM1b2Yf/zk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SWaidsuNofQwiUGVaRlbWpi01ZfHvjb6SfddLj49oWirerQz9OSjDbkCPwKVBmg9e9XIUkXqPYxjU/qswTgRuEGnCpBEpzFbv2bOyoo1sBc0As+d0JVimz4CZJYhx25o8yP2kRk9PaX2W/WYQOWUfdO97hvHmIp2zEtJm60MKmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787899607;
	bh=Z/XHOPBo8QaMpgdG48j5byxtWuWp6kbjhlM1b2Yf/zk=;
	h=Subject:From:To:Date:From;
	b=aq1/KIAxE+v6og62u5pjDC2ZOlDttS+vq8j4hYIwQzqjviCS4S8Z6OqeG1izfLTzP
	 +0QiRorTxN4x5czzv9+M/4CY1H+YHeR+dCj0mSvUYLjLtrI87OniNKlpwoGa42R010
	 u6SsSyzmN347EKTENR0O8EqhOf7CkkVWmZGigvqk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C17601F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:46:45 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C2973809A90
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:45:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.107 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 28 Aug 2026 06:45:50 +0000
Message-Id: <20260828064550.release-6.12.107@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.107
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.107.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.107.xz

Linux kernel version 6.12.107 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.107.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.107.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.107.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.107/v6.12.106

