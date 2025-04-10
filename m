Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98E2C78C9C
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 12:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744289420; cv=none; b=pdU/1CH1+R3aZ4dJkLTm7ogjdOCgLlLPmGCCWc8/qH1HOxllExGULK/OSeFZPkc+KzAos6B+W61KrWZRETZMniEttT8Nw8Vg2YLAT7WnagWe0pDK5HpzpvfJJlIBtBzUqzJ1Y+SE8V6rSOj7P/HHpr4qUin6KOY/oZYTIzOusYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744289420; c=relaxed/simple;
	bh=WTXMtozl/Yys+qZntlNaC8a6PNGxJvyY1gAMDhCt31U=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NkwVbeLvchpoglpjoVhVbkes0EKbfkM2IpUIIfbAoMat2IRRZeLpY2wI4e/fefY1OXpWzWuennWyr6qfHKs0bpuaCJNWxvVy05d6t76dXoWcunYzuqTt2NdUJDxlls0BUfb2+fojyaTDcTurcKQAZycWo9pPra67mmYMOI2N/vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1744289420;
	bh=WTXMtozl/Yys+qZntlNaC8a6PNGxJvyY1gAMDhCt31U=;
	h=Subject:From:To:Date:From;
	b=AhY9eKqdBClwey3A8a4GVExxROhTWWjnux0jVdbVW4yZKV7y0MGxhmnAP/EV3bUsu
	 h7ZR+apNN90dhbVDUfn+RhHEje5GVMJ8vS155eCkjWEEsVXvkzTREm94UJlcpjmMl+
	 nDL8d74WjF4tj7Z1C4eLbMtqplHXBbU5VvBIDLSw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28E9FC4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 12:50:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B2BE1380CEF4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 12:50:58 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.236 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Apr 2025 12:50:57 +0000
Message-Id: <20250410125057.release-5.10.236@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.236
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.236.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.236.xz

Linux kernel version 5.10.236 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.236.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.236.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.236.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.236/v5.10.235

