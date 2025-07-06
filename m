Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18C12AE6F
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Jul 2025 21:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751838340; cv=none; b=cZqmyGvq0Lm84vNNbYElQkWNvrPy1AMQPmEVXSPjH/n+l9VLWGKFffeSXu151VEErUQ4fF+De8H1qnS2OXAq80qlFmTlCcPF0AE/wOnStJzt8iYpCJDaH1XgI7+0qihgMy88elk816BT7gUww6l66oP5A2MmcdKKQWs9A5gn4MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751838340; c=relaxed/simple;
	bh=xZ0/ijbn6560FMSZdzhI/C0QMn9PXbzq4RFuSoZag3M=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uR/nw9WRoR0A86a3KasN1q2FxScBud1moHdHLLDlJ3cxJdnFlWmVfb6fet+NfRXYprHM2B4jcr+GwPwl+gCOl0Ib/CMyBVGO+T7oNF3czoykVtvl8CthMzAHELozyrI68qfcUJi4FlVA3BNOaGCJcvRBWxhJvwM9h03TpT22nHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1751838339;
	bh=xZ0/ijbn6560FMSZdzhI/C0QMn9PXbzq4RFuSoZag3M=;
	h=Subject:From:To:Date:From;
	b=LGT/Qwjg84t5tkc2wKyW3/py4VFpZ+VbNOqMvOLh9PEenfLPk2wmdCTqHLsVc/KOe
	 02K8hAi0hukyIYD24G4fXmRUFWlTOomML5hXKw9M8LJIEdx7PSu2Zjxgs6vtlvhbUK
	 L0mT8WjSNnH61S2zvct+xMNTOHzls1opTqw6UL2M=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B6BBC4CEED
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Jul 2025 21:45:36 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EECCE38111DD
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Jul 2025 21:46:00 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 06 Jul 2025 21:45:59 +0000
Message-Id: <20250706214559.release-6.16-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.16-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.16-rc5/v6.15

Linux kernel version 6.16-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.16-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.16-rc5/v6.15

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.16-rc5/v6.16-rc4

