Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACE2F33D501
	for <linux-kernel-announce@vger.kernel.org>; Fri, 13 Mar 2026 16:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773420326; cv=none; b=P7dHcr4PFGqJ1kJ+g72EYWoz5xN68kqsYymY3qTnecUPrFnKQLt/W+hv+QjclwBfzOY5pNssqRFwnzNbRGQ8UihqxQSBPOzBhVTAe4FEGdidokEn+LJPZQPIF0kcx2mTe2xjM5jInL6AQhuhU9NpHIx2HCBMl5DAEPjLxQyRNDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773420326; c=relaxed/simple;
	bh=04VUVg4+0/liDbZxzkYJjG4t9v+2l15tTtp1G+x3g7c=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=e1xX1y/NOeP6RACWYh84r6lX4eHjeGZN4p2Iy3sXB/Q1hMiOMdSUuLVHNH/2nxxPoHK75PsIPHIf3K9OEFuC1PXYc5t27bhxDLgUnmumg/i/oVYC1zjD4LJsF2+NB7BEdssk8SGNY+lLWiug/PzPUd9aXGo98hskr4o0kayaAs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1773420326;
	bh=04VUVg4+0/liDbZxzkYJjG4t9v+2l15tTtp1G+x3g7c=;
	h=Subject:From:To:Date:From;
	b=gKdiuSX0IO5+CpF55L/A1IYGwwXQIDtRN58fMQosOn8TzE294oOVuI8ACKBgMjpw3
	 j1bGwGTxoSHy8XNZWO+oSnEyoRc7UZe1UM5oErESAyMdwo/eHZteh+iEH0pzRD4kmo
	 RX4DXe964uskaif1bK8aGyhAU4EnMicLb2MTAOYk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E42AC19421
	for <linux-kernel-announce@vger.kernel.org>; Fri, 13 Mar 2026 16:45:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42C013808200
	for <linux-kernel-announce@vger.kernel.org>; Fri, 13 Mar 2026 16:45:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.18 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 13 Mar 2026 16:45:20 +0000
Message-Id: <20260313164520.release-6.18.18@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.18
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.18.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.18.xz

Linux kernel version 6.18.18 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.18.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.18.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.18.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.18/v6.18.17

