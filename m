Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546E6407CF6
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785409563; cv=none; b=NGTOeFWXI5h5GLpeix0qGYh1BwDrgmaGbsYDX3i1QPH5Ewn3O7qKd49zDSfI3dfIXuYlzAMISDDNJLASV1sYooqPoHQjoKH1kIcktTk6SVAGpIVSmqXVH7XMRerApGOQhDsewhqBXdTec/iXbdyfBOzxH6oc9Ulib5k3e7Ym/U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785409563; c=relaxed/simple;
	bh=SCty2O9GBnWPkPxT1xwpyEsAcBsrNG7fYHtA1UzFxy4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SBbr9VFmy3qij/mSzFjQcbyfm6c9yoGQ+4uBnkw4MCqdnBTKnh9wGUGqscZ1SJs2tSQ2+4vQskEIxl6B/rUiJA19d4EAVOXhleuoE452NfMs7NPTCYjMDetR16WgpYCk3VP6H3YbggYQHc83soaCg2W3F7bmydRCK5KCFC82Afw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1785409563;
	bh=SCty2O9GBnWPkPxT1xwpyEsAcBsrNG7fYHtA1UzFxy4=;
	h=Subject:From:To:Date:From;
	b=VnSNvneSWg2Ccx0jNPt8BMrKz+VScfIKVkV55LlJ+YUYIWEYbsmKTY5Tg7ZCNZHVP
	 3X8u3SRwgYVywsg/4lfhNWbGMFhq6YPzwFB4H5tJHZC7u/rSMAJ3Jc42G84e6p8cIp
	 7hrjFJRniQG56UCkG3sLUCsCcqT+1Z4fPzYvYqKc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1B551F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:06:01 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 968763811979
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:05:26 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.262 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 30 Jul 2026 11:05:25 +0000
Message-Id: <20260730110525.release-5.10.262@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.262
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.262.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.262.xz

Linux kernel version 5.10.262 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.262.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.262.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.262.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.262/v5.10.261

