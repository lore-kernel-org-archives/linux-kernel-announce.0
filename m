Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B954D3CA4A6
	for <linux-kernel-announce@vger.kernel.org>; Mon, 13 Apr 2026 13:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776085450; cv=none; b=MB5jeKYPf46lnzWJXb+V0WlDM6/69QZj0XLsSBN7lEpdCWuW3Mj2M93RElxA4YUUHkcSNKi6KcS1k0QZ5ZmERVmracWeOuADUoo/RbMVP/67t/DG8exjFGNnCORR30AEjYdqYWLGDN0muMlH6Z5S1OFINRGAlSxZDn4zuIzMTOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776085450; c=relaxed/simple;
	bh=GAVFIoMXmO6iIXDzTsQR/EiNB7KyqcqLIOTxY1eqNK4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=f88c+wRTpeDBNLl+TC6Xk4KLpq3zgWITuiCW0+/DMBGw1VIINbGUTDca9qD2rxvs0KXrI7sBDNhEu9FVZnd6p8VURJFlsIwTkvVTzCNrvDTxlb4+/RP/CqXmB5oMP0cffOcHiVhdNAK3upaSrTEIjViUEKgfRBQ8cXZlDVUGwmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1776085450;
	bh=GAVFIoMXmO6iIXDzTsQR/EiNB7KyqcqLIOTxY1eqNK4=;
	h=Subject:From:To:Date:From;
	b=rm6g0Gh9y4XLAWaIX0bEtxANnhUn1kNoLqpJrUpplAg9Cg471agPX/EYsMbbXdAbV
	 NJQQ0EHpRmuJ1sHRhFehJPCAo/D7Q0MgG7jHeeXzP2XNLh6kzp3wQuHCzLdn+x8hlx
	 pfUZD/4RuyGja6+wVZMMIxugWa1ZdM98v4Ghzufo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61407C2BCB1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 13 Apr 2026 13:04:10 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42A683809A8D
	for <linux-kernel-announce@vger.kernel.org>; Mon, 13 Apr 2026 13:03:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 13 Apr 2026 13:03:41 +0000
Message-Id: <20260413130341.release-7.0@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.xz

Linux kernel version 7.0 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.0/v6.19

