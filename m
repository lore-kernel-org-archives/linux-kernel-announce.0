Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32E83932F5
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772631619; cv=none; b=ZDbGqykkLCsR2gyxWxgLRVuOUKbBX7NEzuvO7H9G/SjdI4L+MxFW+1mgTnG2K3dNVMK4cZMPswUxqMn1ePS4E8egVVGrU2cd9cetBawpMgeb6PgqTBgI5bGTwgdBs6BB+6L+OvaWc3aaq1tAzAp4Txz/8BxIguEkIsT8Rt0jGIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772631619; c=relaxed/simple;
	bh=YpNy5W4Jmh4GKfLVx4uFZacN5aqHYpE9+mBeTWMGCd0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=t2rztKfVOVz2YYAlD/60bzfjOuxkbpmB7a1Bdj8MgfQsQ+fY/+qenD0+cLgft83S2tqImBiXfH7s3u4zuSsTgfhLsiYbI3JZT35WwNpau9YteIdZICcTbqitYaxqJpZ+cFwK1Wp1ux5ImOj/tw/RBACbPLOqTDoONEej9Kd5ddE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1772631619;
	bh=YpNy5W4Jmh4GKfLVx4uFZacN5aqHYpE9+mBeTWMGCd0=;
	h=Subject:From:To:Date:From;
	b=YTB9f2SxQzEh7659r4TAs0ptN7aWSPSVH2Sd1DIbl/cS2pqoqCdIP0lMhGtPQGSGE
	 CYVDa5HYVWlcy1CYtfzmtSWCihYbnx641f0FJgIxOEvNf1cmDicEPQyPbocFyI/5s4
	 TjuqzxV53QG6NboUKEFDDGmvLV384yofyuWEEkRU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90056C19423
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:40:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7D01F3808200
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:40:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.252 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Mar 2026 13:40:20 +0000
Message-Id: <20260304134020.release-5.10.252@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.252
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.252.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.252.xz

Linux kernel version 5.10.252 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.252.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.252.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.252.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.252/v5.10.251

