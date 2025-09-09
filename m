Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0678835A287
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 17:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757438439; cv=none; b=iG68lpYRWys4ktQr1w/ZP7mesFIRDRPonXSgZSBLbtMSJ8UoGu9zhFTn4BYSh3ujgKFwo9VRSv6sA5Wgget9oT7sgiU8eqSHv1NMyPw78lcgEe0a9z9Zpe48jTf7oigGJEhvZ59dk71Ug7/hr+pMM20x7jVocU3S+TbROZxOM0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757438439; c=relaxed/simple;
	bh=R3Z8bIGqLijrFnsUSI3KaWPFE50A4Kf4VJZhV7J0SJM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ZkpVC4xpToYwqHlp2MNvcv08vdV+hFtEUWD8wWd3XiYKaJLF/i21p2EbPYwqlBrSpFdQyQhy4yJwUpxW8BiZYIyUcYCh8PC2H5qgJPEpzLkQ3NW0/nkEcdLjAxFRFrgoWPK4BHwHZSLgBvldtew9LlMdGI5A7j1TGgzNbZwg7nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1757438439;
	bh=R3Z8bIGqLijrFnsUSI3KaWPFE50A4Kf4VJZhV7J0SJM=;
	h=Subject:From:To:Date:From;
	b=DbHCP3f27VtSp/1C1u2uLVuG37cc5Q0GCt1a47DtGGmfkvLF9tXR71CYJWjg+mw9P
	 xavgJKj6LEAESCQiinitspklMiEtlKzg6xxfJQGRZy4GXiQJxJ9FLrkpL7aCHzin9Y
	 dfg782+Oq6+0sDPCqiyRIOekxwf4DWO0BBL16SzI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDB81C4CEF4
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 17:20:38 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 38F3E383BF69
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 17:20:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.46 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 09 Sep 2025 17:20:41 +0000
Message-Id: <20250909172041.release-6.12.46@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.46
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.46.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.46.xz

Linux kernel version 6.12.46 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.46.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.46.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.46.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.46/v6.12.45

