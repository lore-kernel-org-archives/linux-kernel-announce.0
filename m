Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9189B22129F
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Jul 2025 14:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752503118; cv=none; b=QdnjtfvZOiY9QsCLAkDxEiHOd7hPTtgZwoJSAFXoEbAC2IHqCnDmHGJIBoifujrySJW8mHba82Ujsjk/zjX37bk6wy5j9EmJUAI9SPvzuH6HkYGxxJ06cX11PlY54jrVDs+131qjgXICnmEopCXetRoHnmXoFqK+zSzoQo9nuHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752503118; c=relaxed/simple;
	bh=NxRPh7KpzT2q8gCS2JvXfpTDtB+EAo5iRPniYfACAD0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JZu7fALyA0kKXufpvHrYoQd56duXdXVZbnXPEanEVe4Ts6wxMTB2+EWcXhEP606si0g8oOYiZhyidUheCa3jWk6hmIC6BiUXxgkPIeKc7pqu0UihEUO/md2nfMpr8/cUUnhnP4Zmp0OxuR3Y1rc2s3ruHp792AHC+e/dCGCO7lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752503118;
	bh=NxRPh7KpzT2q8gCS2JvXfpTDtB+EAo5iRPniYfACAD0=;
	h=Subject:From:To:Date:From;
	b=HMSrFxz9RokaC/boNXWl3ock7+eQRdY13Uo+VrZpU7xhZ6CUISFYl3JfnSMHH6c6f
	 7kbsnaKDA+N8J8qThvcRQsJW/CRhGoeukxwy2bX3OjcBoUBXzU76acd132MfwalUHY
	 t+Z5IeIfFK1b5vwVb4u3KedCIxmKjrd48VKoR87M=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7636DC4CEED
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Jul 2025 14:25:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id ADD19383B276
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Jul 2025 14:25:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.98 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 14 Jul 2025 14:25:39 +0000
Message-Id: <20250714142539.release-6.6.98@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.98
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.98.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.98.xz

Linux kernel version 6.6.98 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.98.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.98.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.98.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.98/v6.6.97

