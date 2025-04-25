Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5672153C7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Apr 2025 09:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745572497; cv=none; b=saA5DjSn44lDDWhiJLtSg44VALY3FBzDT+CCP+eS4Qn/TmrOIEJbot18r6skctjV/S31Ujlyo/i+8U3miE9hI5Takiiu4svw1E8NpMUWKgAI6MdwCh7GB2u+8yK1oZlzsJoKt9YpC20w7Q/1Xr/k2UjIPvomu8AYHHBEAjh7LNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745572497; c=relaxed/simple;
	bh=jrtnN1kJeJCsFSDyL8qDnlXfTg247ANTipPw0JDcL3c=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=a5/bG374onJd5QAvnO0+ve0Chu8B+HHRwkPcleBvbSqoohXORSY0xzxNSMYQdzTqYwWzcVDdo9HkTvPnoiUUBHdY2BCGU50uvP6ifACynZoucNAOAKwMHGzESifJrnSUPWAFqTzSG6IaPCkJohNfdcg1Lebu863syZoCC00sprs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1745572497;
	bh=jrtnN1kJeJCsFSDyL8qDnlXfTg247ANTipPw0JDcL3c=;
	h=Subject:From:To:Date:From;
	b=smdx5DogD3QaytZR1D8GO6KloFzRGz5LC4gepfmXUpFG+wwtnv4WfaA7i5iMGjBWz
	 C0wv9tO9RZ0qjib96KQ6ymJvgHKdZzJyD+hwXsqxIQQ1z0ZAT6Y4UGw/MYcJFtKLWY
	 bKXtEtL3zM4btPVorYwULGiQu3UuNQWDVL5xnagM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E068C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Apr 2025 09:14:57 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 37B65380CFD7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Apr 2025 09:15:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.25 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 25 Apr 2025 09:15:35 +0000
Message-Id: <20250425091535.release-6.12.25@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.25
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.25.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.25.xz

Linux kernel version 6.12.25 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.25.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.25.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.25.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.25/v6.12.24

