Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB331C862F
	for <linux-kernel-announce@vger.kernel.org>; Thu,  7 May 2026 04:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778129474; cv=none; b=u67W6xe+2dEz8O+yiPMObmEMt99M3Ja2eciveLzVu7WqxkXZCjDvi4Gzn7gub7ttI/j3MXiLpxCCsDqn6uWn5196XX2+SylSkTO/ll4eGkSjjrl7SM4KaoGMoE56DS+gHRFVteqL7wHRlsHratGvW0P6TR/Bbf3ue9a/0t7RzWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778129474; c=relaxed/simple;
	bh=d1rYAk1Q1B9oOzFCDYCnV2V2Et3jAsJsCQWLuhB/TPg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=F9swWfrQdlSE/s5kGCdLjrF08T3VqVwov5+ol861caR43b9+B/EWOIbHtzYUt8j3sgHFppGlQvWYgCryXQkFpB1bZasvi+8hZYgCYRWbxSZwFWk5u43qOAhPAtVx0DnXEr5keR2gc23I+B2n6MWiWBnQC5/ebLLXmL4uGhzc8tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778129474;
	bh=d1rYAk1Q1B9oOzFCDYCnV2V2Et3jAsJsCQWLuhB/TPg=;
	h=Subject:From:To:Date:From;
	b=uMH6pXnBh0ANiEI4VZ7kuYDAQJ6oLAZL9nw++RfBJzzxmmpN9oL7tF9qJoiOOFdCB
	 tK9fdABcOdsFSmRy8zVc+DepYbXs4wd7yedUYGDqj9955+QXqXdMdRxuoqnGCc1rpk
	 mejqAbqLmJktE60dhXb2Uo1sylXBqAbpRbamDZng=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEDE3C2BCB8
	for <linux-kernel-announce@vger.kernel.org>; Thu,  7 May 2026 04:51:13 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7F8F839308A0
	for <linux-kernel-announce@vger.kernel.org>; Thu,  7 May 2026 04:50:24 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.27 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 07 May 2026 04:50:23 +0000
Message-Id: <20260507045023.release-6.18.27@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.27
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.27.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.27.xz

Linux kernel version 6.18.27 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.27.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.27.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.27.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.27/v6.18.26

