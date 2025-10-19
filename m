Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA562E62A8
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Oct 2025 14:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760884558; cv=none; b=SG7JIU2Z30CrI6A0t+poyyXO1XJ/TTTzFX1in0ArLQU5ln/Na205swr78pzVGgXUG4OwXerJ5jBFrYvR+HTCD1gTHKbOdmWJba7Y7uwncgQVetGrkAbijg50vlV8B9bqDtQAkal7iH7aMhxK74ABEiKcG1ubVaOuPjBsWRSVhaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760884558; c=relaxed/simple;
	bh=GaEr+qGFGZJiddbEnco/k5X8YnP0mPmBHUV1EwpEmEs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=M2O2+5mPIjjr/GDU55zth1f4LF7WJKCYlo00zrk1n7w2x8N8xQJhk5gnttUzzxtWjI5hDPoUECx6qspX8XI/NJE70+MvjzoCBeh1ovCKjSBaRYcxNSX/MoA/nfJGy52Q6XfRTbwvxPT0vHu51t8q90k9jqp/vir3j8dn+SmNYe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1760884558;
	bh=GaEr+qGFGZJiddbEnco/k5X8YnP0mPmBHUV1EwpEmEs=;
	h=Subject:From:To:Date:From;
	b=m9sZAPv/6pK0GLeeFWBs1bXK049jToNZY26QVydziI0NHwjfSGReE/QvC1pL+CW7d
	 UkR+WO7vQtIoht8DVtktOaceE5G//zxLEZJeaKbHBapFcJPuGH3Gf5+k23K8XcSOo7
	 QpWU3I0T4d02kVt4OlIwvLvCriiIAWcoZHKPLilk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D15D0C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Oct 2025 14:35:57 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 88DF039FEB71
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Oct 2025 14:35:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.195 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 19 Oct 2025 14:35:40 +0000
Message-Id: <20251019143540.release-5.15.195@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.195
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.195.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.195.xz

Linux kernel version 5.15.195 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.195.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.195.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.195.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.195/v5.15.194

