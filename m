Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5A44C61
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711518341; cv=none; b=mwo4mRmWFPWqeubls8+NpV2ej3mLCaZ0tXGfEqsqKF0O3mJhjlgedfgb9NiowW1I2eWvAb/WQqkKncdBJ5g5j/4v63ual8OnZ2LT2zbEmyiu26d55mErFE7PJEX7i2LJepQzQS5CsSO65t7YsmjhZBc8nt3dTwrfs2EFJrc1r6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711518341; c=relaxed/simple;
	bh=r9zbK541TxJJuIRr33qArQAIWV1VDR7jxIlA9VgTv+4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=pGe50ag17hlzRWCbvlTp//fFfnXQMMDuJDlJt7KyzwK2xEgz8JmWlAqmjCrh5zuABE6htz7rvPgPpK0D+oP0VpkdeZS809xcB0HwJ7u+OwaJVcLOgYSTLQb1WIU1LNYyCE0KnNA72XHaPAXtsE0gNwt3FxKUT9RNYATIgSmKuiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1711518341;
	bh=r9zbK541TxJJuIRr33qArQAIWV1VDR7jxIlA9VgTv+4=;
	h=Subject:From:To:Date:From;
	b=M0XBM3Jv1SRyWlop7dD+giLGEjf4KdQ/w2Vt2Ng28UJLktRjaiiRcklWg51J2AnGf
	 MsVQcWHW7zsZ+ic568ldoFXMD+VEwOECs2VHe+sQDCiHufmNFTzlzxjig43X+U8nW2
	 xAYGPvPdXTA7o+R+i9smQjRngGz+6ai8or8/cXho=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0210C433C7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:45:40 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D022BD8BD1D
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:45:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.83 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 27 Mar 2024 05:45:40 +0000
Message-Id: <20240327054540.release-6.1.83@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.83
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.83.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.83.xz

Linux kernel version 6.1.83 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.83.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.83.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.83.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.83/v6.1.82

