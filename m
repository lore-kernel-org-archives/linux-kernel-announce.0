Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC7F17745
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778850076; cv=none; b=utoHQNY5qlE6LomWclWqqkXwLJdFzm/hNoDUuAGXJ8TzHkHzAubawGAS6iaRVYNvVj0Yy4qFuu7LNFNhHflxD3k2M8+F3cNxL9F2MfCi13QNn2XjSvDBMWXirJo2U0Vag5lU6bShQsW4avVPoWd0TkQBw2OqfX0bAhk2DpgSwSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778850076; c=relaxed/simple;
	bh=Zb2QzGDG67uNuOBLxiJJCTq9EE9YPR7clpHgjpZL984=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=utETJqYN2j/YljFnNMz6r1nDPmUkkExnYb8f7z2NCUu3p8bQ45ISv52YOt9er/ygcUPsUN7P7zhregllAme7wLSQvQXoW1xLQt/9FOLl1HaM9PFWOV8huGac8Yk5O3uZRS7KDkFVtNoLgrmVhOMyGMILzerwXqb4pDZaH9LJNjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778850076;
	bh=Zb2QzGDG67uNuOBLxiJJCTq9EE9YPR7clpHgjpZL984=;
	h=Subject:From:To:Date:From;
	b=TJvzCYyetOw1P26PmNRy3EeqSoOYoWr53Ge9KgyviBlwIAOf+kVBqqchl0xABMuR3
	 ODeWQQC8ZR7avOeukGmGV/QLTtKzqoAvf43J2BhJFOxIeqZuoJKLC17cfuPkviuAOl
	 MICzJZfp3lWhJoADOHkG9NqfvzMDedruB7LB0Fy0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93468C2BCB0
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:01:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 05C7E383BAC4
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:00:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.207 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 May 2026 13:00:19 +0000
Message-Id: <20260515130019.release-5.15.207@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.207
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.207.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.207.xz

Linux kernel version 5.15.207 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.207.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.207.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.207.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.207/v5.15.206

