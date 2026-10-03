Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B1B341A57D
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 11:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791025226; cv=none; b=f89AdQW02G4SEBdw0oVDJ07Y6IMmQbJP57D0KRCINMCaJ4xjzPeWZHVBGQMRZTOFXihn9DYJd9R/uOYni18mS/2YUyU7PlyZx4lojZTYJRc7/GIqRxWcPAIxi1tmFzFYZk3aCpqKdFXReVKhb8P8owVU8qtfA7OCTag0MVE61TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791025226; c=relaxed/simple;
	bh=HHSQduI3BWYzvJ2e7POkKAcqQX0RoiFX30xJQbYwwY0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=jE5s9V1aEyXcqlUmKN5HGNXumItbT5OmWVB8TRhimNqpSmRWwp6X5iBsuN5jTM7jQmuQYCJH58RHxbcw4bVEqPwMWtePWtpJHe1wx1qu7kvFbWHkT1JzNzb1PLZPxcbKzcO2n9pALwfDpwcAtqEy95K7nLfvh6lzLjq0B8iMROs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1791025226;
	bh=HHSQduI3BWYzvJ2e7POkKAcqQX0RoiFX30xJQbYwwY0=;
	h=Subject:From:To:Date:From;
	b=suZ6RgApyxKaobeyitPI/5NJHmJPlEJt6b3mnfmcYxvNBpDuYybADCmhiYwHkGrbD
	 zRdNQdzw67aPTWeWDzZddzmV6KFUubc4r6D0jQ6GVpr3V6wayqIaldE2Mpy1cca3I1
	 wYpMTjEynVtxu9nkxYNPy26yinv1soj8FnZsDBcI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B4851F0089B
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 11:00:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 79F2238119C4
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 11:00:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.55 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 03 Oct 2026 11:00:21 +0000
Message-Id: <20261003110021.release-6.18.55@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.55
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.55.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.55.xz

Linux kernel version 6.18.55 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.55.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.55.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.55.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.55/v6.18.54

