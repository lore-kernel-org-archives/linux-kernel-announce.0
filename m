Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261611864C
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 08:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708678245; cv=none; b=ed4tTZN0VY9ikDXTdl0JR9L2HDN98U5pdjjmvBe5OFf9u+r6gGKuutbnqRemKadCKhRRdsBzN6lRqWQ01yGTJQVmtFNpDfubO6UZB/vu07lM9hl1whsztllEbhQH9xvh+UBcr3AbUG0wuHr2OSAnMu5y2Rw9Des2F2FSGGlhJeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708678245; c=relaxed/simple;
	bh=YF5NudIAhxrxsub3gvrV/IzkR/UT2Hn30926zXSVzb0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ZLxcx9b45zSZ2R6gBK+lJe4D8tNtewMa4NkDDycScvzHtPAfGUuXniOBq8doah4AMi3hkTu0XzWlTH8lpSDo8TclAlFa+du/t+sPVSP659Yg+ncoF58Q0udAL2ydYHiM2pbFlKBZr5tTtAWgVycFgynSOC53lPVyPSGHnStoDOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1708678245;
	bh=YF5NudIAhxrxsub3gvrV/IzkR/UT2Hn30926zXSVzb0=;
	h=Subject:From:To:Date:From;
	b=hOdqqOihcv3XugHy+r1Kk+wkivWskHVxXE69apSC8WCMOVQ7jfvsrxPMehFaAijCK
	 klICGzJeWVoyILuElTKMfdqayxkUA3/rzLhKzyYA0zrodQLxv46BEGd1n9MM7Zi+YH
	 lJ3RewN5dM62fpfo8ZErFLyKY8EiEICp0GSl8O24=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13A3C433F1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 08:50:44 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C463BD990CB
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 08:50:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.18 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 23 Feb 2024 08:50:44 +0000
Message-Id: <20240223085044.release-6.6.18@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.18
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.18.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.18.xz

Linux kernel version 6.6.18 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.18.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.18.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.18.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.18/v6.6.17

