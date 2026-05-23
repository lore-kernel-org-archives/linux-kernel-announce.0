Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8340025B0B8
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 11:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779536112; cv=none; b=ToBlmWnZ1vhectrIQLeAxAqvTdf3+QBTkhNAXXmM7tHu4hxt/34cg8gU3s5nofg2ohVwx+EzpQcz3BOg66FnUGVHvfSdeS9b4P+q1d7zdKGk3XTRzADldjBSXIWC5vs5ixqf/VAWFK/wkYFAxcXZccoNUgJfAqOjzjpVNEq49+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779536112; c=relaxed/simple;
	bh=9MyQMy0P68bCmu1V0E6p7vmyKKxeS6bWhPeF4SoFXmU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=V/1Z/FpgIfGM3t66tHSipintTsCPDlE3qqPaAvfui8ucxFVlqlFz+OHWpiCwBjgVhR9DDssmqm+snryhqM+Grrf4aAkq3Un9I0SzJPn2J1wjKHgAioFnpVMibqQbEPcGetlyt2oh5lozen9OIKVe4F+/LUxrb0amMKe5bhE4QnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1779536112;
	bh=9MyQMy0P68bCmu1V0E6p7vmyKKxeS6bWhPeF4SoFXmU=;
	h=Subject:From:To:Date:From;
	b=B1cYuKGwNyx3ChhoSVn0LtzJ7WdkEV+ZLLBDJcdSZeB+AQXNlpQzKwohL7ejj1Nat
	 qMBAa+brD4a0px1e3xLfGWqasRccP03lN90gDS8A3pjjyFrckcpcUbzw3IWspCsAMB
	 PvxU0kzh8EKaa0T+Ufi8IZU5XMk0jpWpXntiHhxE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24EAB1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 11:35:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D3BA43808205
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 11:35:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.33 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 23 May 2026 11:35:19 +0000
Message-Id: <20260523113519.release-6.18.33@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.33
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.33.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.33.xz

Linux kernel version 6.18.33 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.33.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.33.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.33.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.33/v6.18.32

