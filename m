Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67DFF49E146
	for <linux-kernel-announce@vger.kernel.org>; Mon, 21 Sep 2026 13:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789997508; cv=none; b=rplylbkRN3+LySm4hzWiu8/sV/jQkBIaBoVzFgR1BK7C1hc3ooJ5HFHT0cX/I6jsOtIzEgjMoStLE2Ho0opU39C8w/3B5yvaEP9+U96Mo9KkRG847xzHhfgBy5+/X0OuIYmIlVxEYWmYXflV1eOsW4FparPYnJtfbK0F8UPEQS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789997508; c=relaxed/simple;
	bh=/22L/8od8E7a4ITYxFEwW8rgo6PDFvkAyKwGrREcMlA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=CSoj20tq+BKoS1H76ZO43EobKeiuFiWztmtSrNytUyqh0d/3ozvP6WWSsrYazd0Nh2lCvr2udAU/d3t8xgqx2MLva8DmD+vXd8XgQYEL6EL2duSz0A53ZedjS+7Zvn1t9bLBNDUEP0gf3PBfYnLHxXVY2aw5y3Sd0pTqLTu1bFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1789997508;
	bh=/22L/8od8E7a4ITYxFEwW8rgo6PDFvkAyKwGrREcMlA=;
	h=Subject:From:To:Date:From;
	b=P2gKMvhXtMxYFoTvdAFAjuOLXIwW+ViIJ03ML4PfsJiMAUDa5U2ChB8Ukdk8Qifa5
	 htoMajxBlaYQCzhT+4yrHlEBfxZOtxhkySJnTKv6K88eOznl/JQ69BqzkYPdSV0BEp
	 IuoyBtrJACcsdDdraOdXpbTP+wkV0vFsQMXH0G6s=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D21381F00898
	for <linux-kernel-announce@vger.kernel.org>; Mon, 21 Sep 2026 13:31:45 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 968753926658
	for <linux-kernel-announce@vger.kernel.org>; Mon, 21 Sep 2026 13:30:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 21 Sep 2026 13:30:37 +0000
Message-Id: <20260921133037.release-7.2.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.7.xz

Linux kernel version 7.2.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.2.7/v7.2.6

