Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC64E3EAC80
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Sep 2026 15:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788796588; cv=none; b=rODCWstej9sP5JyFHx5k0qliriCCjxalWLKLHXRhK2i/gg70EaRq40a7Xt61EFgjeHyoePaQLfi6gLr01ExnNeRdZGvf3SKLwQ/Oc0749lLGXFafK/txCzE7M1xU8dOr2tu2cv2Myh4eh3FfW9/SxQrNYkrTxwSJmB5eH+n/dP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788796588; c=relaxed/simple;
	bh=LwPMkx8Uelhtsn77Cc3oZzCacASNE92um5j5hcDqA74=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ppc23I+rd9tcienHs6Jn2fXZFkVyx4RJ7K/bpyHQMqAfpVKRCq+Eifjk+q31i7R8M4vVSTz1W4Zp1lbfi6T7jB3ElIF4Q57BH9LubzaTfu6mKePQGDocpSOUo/bM3CdwIjWcROni0gB5IzjxGC0SYKZyW02EalRUDc62JFLMPck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1788796587;
	bh=LwPMkx8Uelhtsn77Cc3oZzCacASNE92um5j5hcDqA74=;
	h=Subject:From:To:Date:From;
	b=kgYwkn4YcT5NcSjyWA9EnZRo6PdqoVTgawFUm2SIuEuCR0O2rEJWDqPBlWklwxMbP
	 5Xvmgft+KcdTXbF/cQNL7zOLmpUgo2tCGn6nse5GScvel23xmXT+mgcV27tA+e/iUV
	 7ihq8AAb9i4ge6/QLVZhhFw1OxSE7F96wDx/mPxE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53C521F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Sep 2026 15:56:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9635239E4DB6
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Sep 2026 15:55:26 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2.4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 07 Sep 2026 15:55:25 +0000
Message-Id: <20260907155525.release-7.2.4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2.4
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.4.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.4.xz

Linux kernel version 7.2.4 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.4.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.4.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.4.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.2.4/v7.2.3

