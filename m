Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F6946DFF4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 13:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787835990; cv=none; b=acxXFoD/SKlVOK7IQU+ZPxOZJBNhYT0k2Iq5FRuDW44c9gtRniNEWyaX7T2wP8+hGc+o8yt5GEsR491GFVqtLRA1FNDRv/Y5XBYPS2AO8zKMxkQ3BispcUXgbRbe1tHl+GFXTmAat4+9B6UoBuYwcGP51e1D6TWgcroAe3kSdW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787835990; c=relaxed/simple;
	bh=lUfeZGJiWLQ+1DIWxKeI1/FTNeNYW5qkJ3XsIju6pkI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Us3kKLJ8FRK5tdyWszDO7cJ7NzfmrXm+57PnKDbSi1G8/gAEcsap5TWfZ9mhrYefQ6d/u21QKfXVdnyDd84EWHItCjQcU1CqDC6djQV7bg115nrD6/W6TQQAVsq3XAudInMmy5NzzSRkizat/cS6m8wVJosKKh+1c6b8LHuFy/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787835990;
	bh=lUfeZGJiWLQ+1DIWxKeI1/FTNeNYW5qkJ3XsIju6pkI=;
	h=Subject:From:To:Date:From;
	b=nzPrEnMMFu16bccSLR2AUzagz27C5spNIuZvQrfty3fGo575qQDH8E5DKcSOOFwQn
	 aWYRMQIt9krXEyC1olDX2ejQFJdiAMP6Vdb7z0OScq32lMoXfOZigl3W04b1TuF8li
	 Bh22QPZJ2nbPencbxnDKU9YfgbCEVyhrIR5VfWd0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82D7D1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 13:06:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 594153809A34
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 13:05:33 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.47 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 27 Aug 2026 13:05:31 +0000
Message-Id: <20260827130531.release-6.18.47@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.47
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.47.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.47.xz

Linux kernel version 6.18.47 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.47.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.47.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.47.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.47/v6.18.46

