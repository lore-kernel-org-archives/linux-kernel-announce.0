Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB9821FF49
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 06:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746166808; cv=none; b=BZS1MSHxvebqsRk14yOoHRdXncN0fAL465QvES01CQDan0vrP7mT7bz/1MfuztL0w/lHFPzpte9crGZ+qeYSM99AnXoC851MwA6A+LfjL09Eukf8oBmCs8ydBbaDuWSYRQc9uNLZ+ILvaw/blMEn+Xu9FwjsQ9I1DfxGBpLdJX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746166808; c=relaxed/simple;
	bh=KN56baX1hstW5a09Xbnmef6anAH1m49PsoHi3LvE4OY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Br0jvTbdTil6kSZESVzkEAoSTx9QcEJ9QFrOZT3tXQIc+izEEw9Z5YFKqpN4UEZUytkhNWRoYalbg2q/O97E0jBvU6Hclzdb86aPMsss8oBbYiufGabamBKNngWDkdy+xTJ8s45kjOkf628BKt2jyDZTI8TRzNksG+wEyHXJAB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1746166808;
	bh=KN56baX1hstW5a09Xbnmef6anAH1m49PsoHi3LvE4OY=;
	h=Subject:From:To:Date:From;
	b=JhvOCFbCUjxDXg3h8yCPiWoVbAtZ7RHV9LEf9IGHS8fD+3c7BZhZAYNyprJs8s0CE
	 Gq0LwlFvlJV0V4YlrLGCAlxqNK+dhiltfC7wxLJN/QOWiaHN5d6fJqp57ffZoibXJX
	 n6AyuaV7mmOq6VHd4TvGvW0tXNY6zQlHH2C91pAI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D6D2C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 06:20:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 70B123822D61
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 06:20:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.26 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 02 May 2025 06:20:47 +0000
Message-Id: <20250502062047.release-6.12.26@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.26
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.26.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.26.xz

Linux kernel version 6.12.26 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.26.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.26.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.26.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.26/v6.12.25

