Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6A0E1D54E3
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Jul 2025 09:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751794213; cv=none; b=TwOQPo//SHtVgqBNvEkwPYRhBvqOivxli+3IM1jkDqEFYPjtW5pEg+WHqlNgR8OTdKnYu3e2dQbnbuxkkMyYCQpsUx7rUW8h8yYnRC11q760IP2phQauBaT3j08IhRgExWhIEfhUeaW1mBA5P7mnUvZ4FAFDRGA5oQ1xoLw9vSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751794213; c=relaxed/simple;
	bh=p9WXY6fHLXOtWIEJi6NKTrRCyrjjVQFFwdzdkSEwspw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=f60KZGy+gST3IstKEYhP9KWFEoWSkbThxsAHtkR5WMOz+4XB9kHFVUdwfLd6mrhajNVZihxyx0ddVa+trzZPqeA0l4CfUUhRvdfdY0KJ/8MpqqL6PhHlrbh2wCJlxrNBS3XKfuvhGCZLuvhdBFpKTOZgWhguz0qre5XnnHAqqDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1751794213;
	bh=p9WXY6fHLXOtWIEJi6NKTrRCyrjjVQFFwdzdkSEwspw=;
	h=Subject:From:To:Date:From;
	b=TemU0weUlIqZGYBB3L6/qzrdqXJNOShUjTxXjQRm1+M75FhShpXZFY67OjE2qalbx
	 m4hzo2hzHSgpmLo7wyDWoQioUdqcRxSWzOqmMCZ5uTMGc+db3ZGfbNZixT9BY4pH5W
	 O1fFF49V0PRPjPllexCSWU0tkN75W7pmbWQ7mhoI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52322C4CEED
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Jul 2025 09:30:13 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE7CB38111DD
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Jul 2025 09:30:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 06 Jul 2025 09:30:36 +0000
Message-Id: <20250706093036.release-6.15.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.5.xz

Linux kernel version 6.15.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.15.5/v6.15.4

