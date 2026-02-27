Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB8738B7D6
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Feb 2026 21:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772227217; cv=none; b=a04CnGiZL6pGpEzXyYAi2em1vhdn4qevZt3zvb3wuFKCjYJgrDvD3zYlTKFqMNpgr1zRhJeTtHD+TR7MxNH8RdtHuND6SlKgbrAmz7a9crLMw3lowHzSfgDpCF4nB/mwf8DKu2ZIdAhnA6TlaBnuqji+rE5IK2TOE3ulm5Rk4Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772227217; c=relaxed/simple;
	bh=gnHzy2UERNAUNk1S8usZnO//WmAlSnDWykvzRmIi4BE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ZNC+KI246/dUhIFSfnXNr6wdAGAIKblX791tFgLTRFaj+zUh7YQuQu4WiuEI7VW+UrXPpQeCrgaw+r40ZQ4U+rrwC+ZnhkmMwqtVVFgOCqPYCEXbkXT/LVF0sbmluCqEAw+ny7b/lQak5nS+awkygSiKF+n9E4R29h9E5fd/kso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1772227217;
	bh=gnHzy2UERNAUNk1S8usZnO//WmAlSnDWykvzRmIi4BE=;
	h=Subject:From:To:Date:From;
	b=DYgO6kSYAEp76lZhbfwJiOgwp2PXgA4XQilAgeGKXTPVgCtde6/IsC0CJ1z5u4uJr
	 DmadUUT81dvrgp/9cUvmdzcyb7rpdBl3YQ/KBlx3J9hMBUMv4uMR3PwR9dUi35MxUJ
	 gbjGGzYcx4cUiI/MXMUESgOr44iS03m9OGTSZ4WA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 873D2C116C6
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Feb 2026 21:20:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42C3B39E961E
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Feb 2026 21:20:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.15 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 27 Feb 2026 21:20:20 +0000
Message-Id: <20260227212020.release-6.18.15@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.15
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.15.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.15.xz

Linux kernel version 6.18.15 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.15.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.15.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.15.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.15/v6.18.14

