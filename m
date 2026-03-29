Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D29B30EF75
	for <linux-kernel-announce@vger.kernel.org>; Sun, 29 Mar 2026 22:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774825109; cv=none; b=c+zp/8CmtjmzVF5kucLpdUKf7160+7V1RWEW7M8XhJE1k5sHNFTDBpQUXaDZhX1hHg6rS12wpjEYSYu0yPxgngaTsVrIlAHNu7PSDewVqDbiICky8AqsL0GyT9IdtH/D+tvt9iCcdPI2c0vRn+YyOpS07P0/V80Qt71QawSmpHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774825109; c=relaxed/simple;
	bh=7Yfc38ozkxAnx/VAB8XtCNeuTuPjwAH+l48w6LBD0aY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Vjo4fpoku5l7+LW4cf1qvo0BUdDIM8OxmeMTsZ5UMxIlm2kk9Q4MIzZKWehDeNqnTEYNvaJUR+C2RqkaCAQU4xp/clomaG1T4hXsjT7SkyJxhJ73YVNATjj7vmEPR0kWnj6GN9SMZTBA1NW0pAUbI/1IVrh4p9h1I5iwyquBA28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1774825109;
	bh=7Yfc38ozkxAnx/VAB8XtCNeuTuPjwAH+l48w6LBD0aY=;
	h=Subject:From:To:Date:From;
	b=oNnHfme6bEU/dwtR8Xl1lOV9/KEA4qFmL9MfR1w25QaHrxzyHd9ODS7e8eNLnp6NP
	 hinWLtlN0onyjPyyJRbzFTnnc+X/dqiWbxJBKQl015kKAu/kQKaO3rOFSKlcvzQ7iQ
	 YeTqUJLFTz1ZXX/9k0Ev8rN85byfLrg9mHK9CIDo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 197DCC116C6
	for <linux-kernel-announce@vger.kernel.org>; Sun, 29 Mar 2026 22:58:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCD5E3930012
	for <linux-kernel-announce@vger.kernel.org>; Sun, 29 Mar 2026 22:58:14 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 29 Mar 2026 22:58:13 +0000
Message-Id: <20260329225813.release-7.0-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.0-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.0-rc6/vNone

Linux kernel version 7.0-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.0-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.0-rc6/vNone

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.0-rc6/v7.0-rc5

