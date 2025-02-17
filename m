Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA631218593
	for <linux-kernel-announce@vger.kernel.org>; Mon, 17 Feb 2025 10:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739789711; cv=none; b=NVmazetImQ1aq9oWoKftm5tGT2OZY3NMMpDfEW5virfPvSWDNIy7ex79CTrGWMS5CdKeYeTneah5lbEVxetZyf6u2MIqKrRlOZ1az87TIjzSEI8PQ/Dh5G3rGdHqZwPbCR7M0JO75m07rkT4BcJFHw1CZqHmaFEbRR9UWvq/LDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739789711; c=relaxed/simple;
	bh=DFxDySjgAL+bNt/c1Jna5RQegUaKD3SCjOE4M3j2dhA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=FLAbIcFjGpN75m2qDtPoKNhZWZYSAb0l9wLF36zFi+r6K6Ob1u5mdEK9zbf/70pN6YIEmqnrRv736MKuYOdnQyEMqKp++Vjnz4HovWrhaVmif6AembcWIeztwszZiZCk1+GPe1Jdqgay/JYMXPhescFjGBNztuWO3g7SndbxrmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1739789711;
	bh=DFxDySjgAL+bNt/c1Jna5RQegUaKD3SCjOE4M3j2dhA=;
	h=Subject:From:To:Date:From;
	b=FnYZkO8GmlX2mzZzeYSbnCRuANKk2JNKT3tUAlJqP9ggRoIXt870fGIdxh6hsOvzf
	 W5EG+xPWLNzuWK5VRUHqDc+CryltYkDV3mOgKYgsTj5JQr0G293VDJ33670ik996sT
	 IHZRGmFGSBGBE/g9aH7Gep2yZHgqdiK7k2fPwGR4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49ECDC4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Mon, 17 Feb 2025 10:55:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 75891380AAD2
	for <linux-kernel-announce@vger.kernel.org>; Mon, 17 Feb 2025 10:55:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 17 Feb 2025 10:55:41 +0000
Message-Id: <20250217105541.release-6.13.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.3.xz

Linux kernel version 6.13.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.13.3/v6.13.2

