Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AA6644554B
	for <linux-kernel-announce@vger.kernel.org>; Thu,  8 Jan 2026 09:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767864541; cv=none; b=HvCDjDEAMI2JGsTEAW9RIAJVTIjcdfpk2ZgAupukXqHoy+ZOfFPU7uCAmIGhA8uj4zDEQIpY9tuaBTkObOftRuIVzsWDkNbCsV2Ehm+kU5ogKzLTTW3BMNIy0+hq2ts3QEDF9RletEyk1JoKMyCzoPYEUWukAXPogu/WmRSM9e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767864541; c=relaxed/simple;
	bh=eA0Rm8plCqe6LF+Gp/3aPsi7kg9wxK9B0ZNjEVNTTzQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uj11ST0irlGiZp+gHjZw5Ycn6lE8TcWdN5Ygj+eLgwtJNFfWHrZ7+gH59VS10R8/3dtpN86/8BPVtZ8IkqTlNDHGrBgOuV1KDcvS9/vA6AZ0hJKNiW/JSxalLAr16lOXq8/5T54i+IrnoogCHnL4wrZ1g1kG2b/MKy4YsggrG/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1767864541;
	bh=eA0Rm8plCqe6LF+Gp/3aPsi7kg9wxK9B0ZNjEVNTTzQ=;
	h=Subject:From:To:Date:From;
	b=SNI80AYKJWmM+YFSqRrMPr3b5th4vJHe8q15CcuHurdUT+Yk+kr7z0zMsJFj+4miv
	 M0eNS93VprkSWm9269+alK4wtGSQsnq8yPM0Gys/fTrGqkpaOJQdM1P018XvHSLdV7
	 Z+OiNfJmPfZ9ZDO4IUmODwttw7lUW8aTpn8YClYY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 431F6C116C6
	for <linux-kernel-announce@vger.kernel.org>; Thu,  8 Jan 2026 09:29:00 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 032133A78598
	for <linux-kernel-announce@vger.kernel.org>; Thu,  8 Jan 2026 09:25:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.64 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 08 Jan 2026 09:25:36 +0000
Message-Id: <20260108092536.release-6.12.64@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.64
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.64.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.64.xz

Linux kernel version 6.12.64 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.64.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.64.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.64.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.64/v6.12.63

