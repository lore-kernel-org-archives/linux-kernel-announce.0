Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565C026056E
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Sep 2025 14:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758293739; cv=none; b=ra7tb2ZAIULJdsz8N3a0xG15MR2f2oEGfwdg0WfAOqn1fhv+FWKWk9/+ZZdyQt8blH5IL1/wMughv7x68TXPe7YSK6Dr5qmChBwreJ+tCY/s/8eQlC02K73fsTuhFjLNoHQmNk8wSzxVbQddWLA4vZhsELayWGRNspjARnL+4wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758293739; c=relaxed/simple;
	bh=n9MrkQwGh6e5btZiSwmJp3lFx7jTVRvH+bNr+L1IidY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=etJhA/ew9swCF54HzfX/xZbQnntyl2r1w/0dJzseoxwAuEWmWy3vtfigxZDR5jjsR/EnOMDhfjRIotrx3Ih/BzemU1/jETHhaXDqXb9xWKL9AdcMTvNglc+MdfSDYEpEnYuSAFprDmXA7Xvp3tcKIT/ilfELmw81D318doE6ySk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1758293739;
	bh=n9MrkQwGh6e5btZiSwmJp3lFx7jTVRvH+bNr+L1IidY=;
	h=Subject:From:To:Date:From;
	b=L7G4oR9Z3q8QbV0W1XVO3PzJI94Fdn8RGGJ8aYHG+IFmCe9CDftD1PGkTy5IGberd
	 DlvKXQ2zz8OAZsYMnnahAVn+O2naamTeMKMhPDFl+tZlxEWiDdM5+N8ZF7Jz7dpNja
	 EA4uxbOEf5/3IUTl2TYjwWzJWIcHWP6AB8xYfDCc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21400C4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Sep 2025 14:55:39 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B173539D0C20
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Sep 2025 14:55:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.48 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 19 Sep 2025 14:55:38 +0000
Message-Id: <20250919145538.release-6.12.48@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.48
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.48.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.48.xz

Linux kernel version 6.12.48 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.48.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.48.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.48.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.48/v6.12.47

