Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5A42F60D5
	for <linux-kernel-announce@vger.kernel.org>; Fri, 12 Dec 2025 17:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765562323; cv=none; b=Oqaw7C/n+lAwZFsUpIR2CUaoRc+tvmQ5VHQx1UppBYIbWtcDkKY9451dAFtezRsRDXFO20KxTni4bt6uXCBWmmGDuRT1X1Dwhhu9ENxl7ZgLG6yVoydzOcrXKFAr9Sb1O4Rbenyqvf+NIg8LFdfJUjkxX+BCH3JNfPgf/epIAMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765562323; c=relaxed/simple;
	bh=Mj8dY2pMTijcgTwvX3dtqEAdtU3KD6IvO7ot/5mMglk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NarjLoFwRglM8dfsF1yv1ACvBi/AT2MJTwOA3lOulBmMo55pk/+bgNnTGQe6DeU2aDmOuOJmkU1+FEcUN0s/i4vJJgym6qoAv3g+IBitCRUNThXwZJKNy/AGiHlJBVpdlLHTx2gEEA87hZdpsxqsZe9H62x7CjbHKa+uSXGmxw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1765562323;
	bh=Mj8dY2pMTijcgTwvX3dtqEAdtU3KD6IvO7ot/5mMglk=;
	h=Subject:From:To:Date:From;
	b=ZVB7cSNVpKNhPhZLH/vkc50aBhYm2O0zJJ7tcgKJmPffH7j0VQLamDgij9sHrgkod
	 lPPhtLHvNOByEQHCsgynwyycqSLQe13352stxCTPlI459PaZYT7txZhmFaJuwDDRNc
	 hIRV7Vx1F4idHent9fMdWs8psgs5f9qHp5vvvlTQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E89DC4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 12 Dec 2025 17:58:43 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BC839380A945
	for <linux-kernel-announce@vger.kernel.org>; Fri, 12 Dec 2025 17:55:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 12 Dec 2025 17:55:36 +0000
Message-Id: <20251212175536.release-6.18.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.1.xz

Linux kernel version 6.18.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.1/v6.18

