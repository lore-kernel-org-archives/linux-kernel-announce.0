Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 967A21E869
	for <linux-kernel-announce@vger.kernel.org>; Fri, 16 Feb 2024 18:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708108247; cv=none; b=DLsVmYiUfTaagPRkOdDah4e+kdi52vl3pzTh49FJx2selrjGTHBPtHwPOWmqcdS7BidN7M4hKMMnIdLpJHHGvrwub238gukJ9cMjMjmhlzvNR+lPIEe7Hh6tWEv4yr1JHIB/1py3qwL3i+mZtgeWFE+Vko4EazVzwL3EYp5nATE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708108247; c=relaxed/simple;
	bh=fIMw4kLyqU2rhp6KHC7SuAksn/XglDOT51DzrOmFEJE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=VA3akVUk2R0m87cU6cHPwh++TYmXj8gDOgbb/xjcyHLIq3dTNot/9DBB+l5q5LKv3Vjo2BSx+/KIcwjvLt1ZxEs+ZHYyAsa4P/0e96WSUufyT83t9iSvC/GMv9obaOYgPmp0J5qjtOdLrpXypP8D2hfRAj2cLxLK+Zk2EtGpYYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1708108247;
	bh=fIMw4kLyqU2rhp6KHC7SuAksn/XglDOT51DzrOmFEJE=;
	h=Subject:From:To:Date:From;
	b=ajZa4dUfp079wbGQfcnIK9fA6pKEx4G4iwn3AZ5iO31MxVDEAJRxpkFwJh0xKDEwq
	 fhkxjdI5W6Rps20ooo2ryhiCciBq+YyFGpBkGq/CmtyMiDdiLU00vRZ8goiRjk9k11
	 T5Ud7wagsnC62LdqgFsksxTvbkdFzw4WLSsIvYh8=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 21DE2C43390
	for <linux-kernel-announce@vger.kernel.org>; Fri, 16 Feb 2024 18:30:47 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 01671DC99F1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 16 Feb 2024 18:30:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.17 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 16 Feb 2024 18:30:46 +0000
Message-Id: <20240216183046.release-6.6.17@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.17
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.17.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.17.xz

Linux kernel version 6.6.17 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.17.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.17.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.17.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.17/v6.6.16

