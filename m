Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF51321B441
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 15:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731081340; cv=none; b=NHUR15+HTPFE+m1+jn0gDt+jybxB1f4GGlvjn8Sl0bevwvSber7SEV+2xWDPQSr59Eyh/IZhYisDJVAxl+7eZtcf+jjdj/IdMBdSfSc4+gnD7fUSt6vyYmqa5Yfdvc/KMb/NkUWrQ7Z/YuXiFVzbK/jKQACL/mAWGQSmZje58YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731081340; c=relaxed/simple;
	bh=hl6dc8AXAZy1Rit78gqclt/Sw0enXd0X4Qc/fKmgJUw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=oJs1D6NY9BVmeIwgLvwP0WTLB5KKfjSxHVWK2TLAEj+FOGHAk1iCkfrsS7TAUiXM/MCTzPHP82g3TcFw3zJhY8vuAOojbwn8s30voVdIIBV309nomtSyaC4OXLKQKkDAa/E4F52gZNoFpCuPqn5Vyg23Zm8Vhuv7O7eIDr+5Q/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731081340;
	bh=hl6dc8AXAZy1Rit78gqclt/Sw0enXd0X4Qc/fKmgJUw=;
	h=Subject:From:To:Date:From;
	b=YVP7TfyEeXG5Kq0+Ly2ALQjfahQCJG+UuGvV/mP9dN8U5T79yTqAMwiLKNK8XjRbF
	 hlZZgRDPdR77zlEqFmoCAEL1/wL7SNrmbf3HbRqVgsHXy0+KxZrWNslnMuV2pqth4T
	 ukODymNbj3+7sIMny0vkrMeqH2hJ5fUwbCf+Sow8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88F8EC4CECD
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 15:55:40 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33B763809A80
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 15:55:51 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.171 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 08 Nov 2024 15:55:49 +0000
Message-Id: <20241108155549.release-5.15.171@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.171
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.171.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.171.xz

Linux kernel version 5.15.171 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.171.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.171.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.171.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.171/v5.15.170

