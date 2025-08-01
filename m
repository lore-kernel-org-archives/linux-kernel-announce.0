Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C9721B9F5
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Aug 2025 09:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754039427; cv=none; b=komgLV6dajHCdUpPxfWe6MxSUKv9vqR0djNuR/n611DtjBpDEj/DHYYjEJCGgL+dP5yAjOD4MICgNlt/dAGM3BF0zNXozGkHUEtNduhKj7V4nDNrMrEbmjYmsnCdluq09nY7fO01RWTTrUm/JzcaDtHbePCH5EtcHPfBWvnylPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754039427; c=relaxed/simple;
	bh=EqK8GjfwmrniPWLTDlSGyYeK3mQjoi62Hb0sWs28qGw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=I6jBkVb+Fk2sf5kOZjzVt4D5AKOM9rpC+D9bXEGafHzjMAqyGHKnf8xwJiLDOEVoOtZm4jMdcwYYWHVoB1bPJMb730gBKBjoXYmZCjroBrMjztjCfVyW5rTFAjDZwmMwR93KH15HiRA1fzg5ZNRho7RIfieUNIGoOhK1b9QT7Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1754039427;
	bh=EqK8GjfwmrniPWLTDlSGyYeK3mQjoi62Hb0sWs28qGw=;
	h=Subject:From:To:Date:From;
	b=BpRbrM3Ubm5AFcK7LnGLzoTYFFsTau9DrfUuAC17u4B9Id5bMag4enU+ex5tSY8L7
	 j9Z7roW4W7rpifrC3I1CrfVFdYSQPfgAp0n2uC5l2H+Icb+zu6MpJBdeigR3ejuzFl
	 dikVRxyuW1uA4nbatA6rZnlIbrS5oHwrFtrcr01s=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE324C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Aug 2025 09:10:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74D51383BF56
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Aug 2025 09:10:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.41 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 01 Aug 2025 09:10:41 +0000
Message-Id: <20250801091041.release-6.12.41@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.41
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.41.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.41.xz

Linux kernel version 6.12.41 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.41.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.41.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.41.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.41/v6.12.40

