Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED1426FA58
	for <linux-kernel-announce@vger.kernel.org>; Fri,  9 May 2025 08:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746777603; cv=none; b=G7rRKt6sggc7MNvlqY3tNzqmM2spQCelf6/cq0FZyj61MbQFvLADMqH51u3hhjt11f9R+L5ZynrqtiHHxpn2w1Spax1ln5QsMINT/A21pIMrfKEuygkKj0T/it5iwSVMyvJcfdLJjDpBq/yUl9WRSFy89iY3mqu1uMSmmPsriwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746777603; c=relaxed/simple;
	bh=i2P05Mo1WNR9WM0nhk5LuKIO/pxfouY+NyGNjEV3NAc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Ox962aupAxscaNq96oKtKo1IYrOZGeD7Ai21t0b82YiMr95FW01jkjWOb0r1Zov3mEso+y0/AvI7MhYtIl+w+EfVmaHryVCmoKhEDpT4deoRg9JXfohG+ww1v6pIvBPkPDW5RLnf/w6DO4SAGJZJEbj7Uj6uboVCA3Y7vRy83aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1746777603;
	bh=i2P05Mo1WNR9WM0nhk5LuKIO/pxfouY+NyGNjEV3NAc=;
	h=Subject:From:To:Date:From;
	b=RYULnELix8szzaZBIcnk1TzE+PwZOvoznjvyWw6WmxAF6v0GhrnHVONqKre2xMtql
	 g/syMqOk32NVcLgBisVJpHexkl7cX9QlKDJINVgJik01KRU8/ywFkU9QlMS29G/GlH
	 L/RDvL4vbJ15YbkegipySwLBj/Z3HbGwGPbbQhK4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50066C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  9 May 2025 08:00:03 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE6C9380AA7D
	for <linux-kernel-announce@vger.kernel.org>; Fri,  9 May 2025 08:00:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.182 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 09 May 2025 08:00:41 +0000
Message-Id: <20250509080041.release-5.15.182@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.182
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.182.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.182.xz

Linux kernel version 5.15.182 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.182.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.182.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.182.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.182/v5.15.181

