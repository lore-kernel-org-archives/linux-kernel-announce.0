Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508EF199E8B
	for <linux-kernel-announce@vger.kernel.org>; Sat,  8 Feb 2025 09:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739006427; cv=none; b=qIBr+RW2ci82GmEou7X6h6OTlVjJilC27JllD44jw+JA/Vv+4freoWy+P0XOUg+jaaWjhs4fJPf9pjCiDlw4OaIb9yFKATB46TY2AhlCMuTAm6konuUopZc+uH4AtNBStHo4kSBvWswBlF6DTv45tBvtcAJYHT02JMMLZLtOYf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739006427; c=relaxed/simple;
	bh=jLggHakOTAFdzmanUgpMt1nY51N69fHHmrwiwjjlaQQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=d6z8SjflKRG0HZ7/FPLjSKTTc9I3JAnmi8mwdPLypN5A0SRdjw21yoOzmvN5kfhFhVQx2b4sEouUtdcUwrzgH8LUFWEY3TkRyjzoe+oRwiUbro6WfY4PGLPN+31uJHPDffd83ZzRUzcypukW30aOTjW74WBiF14nRdUsaLeepL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1739006427;
	bh=jLggHakOTAFdzmanUgpMt1nY51N69fHHmrwiwjjlaQQ=;
	h=Subject:From:To:Date:From;
	b=axD/8aMGkTqwzsaF66oyBKqoe4SqjgI4Ez2kA8+gtMj6rfvIJrof5A1BE6UAmIzwr
	 HE1URbbdeLiCO9TW2BEHqkM9k9dtWTSOuUbyWRc6Q6+4Zyk8IlkaW4IMtQoE3xQ/dB
	 37bL55TERSuTstFJd+e5LtAqA1oDx8NsvC887ThM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4BC2C4CED6
	for <linux-kernel-announce@vger.kernel.org>; Sat,  8 Feb 2025 09:20:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B81C2380AAF5
	for <linux-kernel-announce@vger.kernel.org>; Sat,  8 Feb 2025 09:20:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.13 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 08 Feb 2025 09:20:54 +0000
Message-Id: <20250208092054.release-6.12.13@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.13
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.13.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.13.xz

Linux kernel version 6.12.13 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.13.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.13.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.13.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.13/v6.12.12

