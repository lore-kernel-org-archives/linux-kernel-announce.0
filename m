Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01377302140
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 09:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776502855; cv=none; b=cqS6sZJRRRvIihS5MIXlGMEBgYnmZxW8C5vHf+1GvrveJGqbbcEaBMEBRoC7Pz/J/JN6+wmg65BwKSd0oHV8t2hAUZJwRXkeLBuKyoZ67wYXY1O+NqD+f0KRiTbZkFgJg3mjpfjr0Kx6bi5d8AFdawTJnH7P4KkMSn4hVqBnzbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776502855; c=relaxed/simple;
	bh=wRGRYDeG6gf0jV3mYq4ihqsTlXQ5x7T7zU1b2wxMM88=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=HVvC2S2jD+nInholhUSEny4TrCulvOiDpwEtg7+Gspevjy9pj54JIRKLPchXEJbmNzJFSEjGGGbRrSZCm0VtaiefMqE8HhIOnHzNfjfp7lSBcjclYMUiKRhkDCA2Ws8Z1T8b8m5mrNGFvDCAWJ2JMLOfjePMCrXMw5wka40xkjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1776502855;
	bh=wRGRYDeG6gf0jV3mYq4ihqsTlXQ5x7T7zU1b2wxMM88=;
	h=Subject:From:To:Date:From;
	b=ZoFkeUS1UrDe0sV4fc70IYK3nVelDBpYaEouWKmUn7jh9TxRKMRUf2ostGdaP1idU
	 2zSw4pDT5fTwLm2lK2kseqer3nYztRE2XdXAuTt4Fe8tka/Rf2HUdYVSf6hHU9JlV1
	 o8o+ziN4BQyVzEGJ4DgYAqC7umjxAFJQo+AXidpU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEE11C19424
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 09:00:54 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BC6BF380CEDD
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 09:00:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.82 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 18 Apr 2026 09:00:21 +0000
Message-Id: <20260418090021.release-6.12.82@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.82
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.82.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.82.xz

Linux kernel version 6.12.82 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.82.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.82.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.82.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.82/v6.12.81

