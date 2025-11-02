Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A971A2389
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Nov 2025 13:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762089965; cv=none; b=XKGZ4knti/DxIZUTKYNGxtzf4Zoe57XRYYrnGUZEqb2a0X/mR+/ki7MPUid6KeeJN9Du0nNk3GFvbe1skGOzvH5qtNGfRxX9nrPxlez8LqDQZptyPmsRY7vxR56VNwjygT5RQBIpDa6rmcpMx0edDExYc7LXtwCaxq26lYMvYCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762089965; c=relaxed/simple;
	bh=oHezkeos9HFhUgxJ7EQ3Y2/ews9CqUk63NRjwFIdvl4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bDmq8Veb95CRn5WjIfIhoDX0gZyUaAYRofVqgCkF1/duda1HdMMuGpUyiY43MNtZQUoDNndoJG9TOlz5TogvJc8LLKv0Uhohc1PwPQsu5MNFu/IBnwt3me1z8E/QOunIqsYdTQvpGtOQ2Ef2LZUON7ay3pTI4IeeBp7SR5mehSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1762089965;
	bh=oHezkeos9HFhUgxJ7EQ3Y2/ews9CqUk63NRjwFIdvl4=;
	h=Subject:From:To:Date:From;
	b=Aki8r5TrRujn/8Cby2bkqMYTXUksRjOI6Y6AAqPx4Jw98L5jfW4+eR1OyVva/qmjw
	 /kMUZQ1bkU0dtBzJCvyDtO41Pxv/+p30nMnGW3ZZFw10+nsI0zQJLpiVaj/lUCKU3j
	 aZXoAWFBAccdSd/eiN8t24HI4sA0UREpmgZVJQAw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A845BC4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Nov 2025 13:26:04 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEA933809A00
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Nov 2025 13:25:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.116 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 02 Nov 2025 13:25:39 +0000
Message-Id: <20251102132539.release-6.6.116@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.116
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.116.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.116.xz

Linux kernel version 6.6.116 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.116.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.116.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.116.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.116/v6.6.115

