Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C949919005B
	for <linux-kernel-announce@vger.kernel.org>; Mon, 30 Sep 2024 14:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727707548; cv=none; b=l7WYKEjw0RVhB2XKbxaWxapjRV/Zf5sY1GyC47ckfzfEKuKUQllUeWvuRuBLldwlfdOT8oB3cqafeOmdkPKt4vqAoaQzmIl+PLEf1TRiwl/t0YqQLE/1GxALFkDSHQd1s/xJpG1K0UyK52Jfok5QZ8SPZ5MrtGMdDailBegx/kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727707548; c=relaxed/simple;
	bh=r7lM9xCWMzhUguHxKPYqrZbC7ZrhbPJyWZjZXUBbp30=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=S45SdVV0A1UDJ4eehdADGdvf+Jh8jmz77fs0GyhGRaQaLZZo1C/qrH43UEEPJONw3tl3t+4awGZ1xoFkPC8Tp2RVT5U3DfirpLATU/+JR5uEei9DuxgpUnbuYP7omh9L11sjwwsfGeQILp32gAwjm1omBKUiQgwGhfgH84e98zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1727707548;
	bh=r7lM9xCWMzhUguHxKPYqrZbC7ZrhbPJyWZjZXUBbp30=;
	h=Subject:From:To:Date:From;
	b=FEc1u3DN6mxwHo4vqC9TIWTocG97cHDaY3lY4yDDix2mzgBpsebry/zD064G+MSsW
	 sOmvJ1Tsw8d+yiOb5idZniou1oohuSeRa9eE46CXRfVJKaXdQD6QCRwxtGHdeHDvz7
	 LFzBlWTltjh4A3T1dsKRVP0wNQx4t6PBB885d2RY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C263C4CEC7
	for <linux-kernel-announce@vger.kernel.org>; Mon, 30 Sep 2024 14:45:47 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 78DCF3804CB9
	for <linux-kernel-announce@vger.kernel.org>; Mon, 30 Sep 2024 14:45:51 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.53 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 30 Sep 2024 14:45:50 +0000
Message-Id: <20240930144550.release-6.6.53@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.53
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.53.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.53.xz

Linux kernel version 6.6.53 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.53.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.53.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.53.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.53/v6.6.52

