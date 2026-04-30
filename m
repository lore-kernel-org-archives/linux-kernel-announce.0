Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3593A75A1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777542664; cv=none; b=KVS1ClVLqJOCSfOOYEhvjStBWv3606sANcqm8wWPAhMZvLvBkHcE9FZjtpEf5nOz1F25Pw+qq2NM/pWLAsbMMEwAjZozxt6F5KMn/IIjs4vzO2xZYhunK+UmIiR3z+qqZEXN0/NBH9TizF0z0ttyrr9tH4Q+lVpFirDuGi1ZXV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777542664; c=relaxed/simple;
	bh=xFasOIekCNqk2K4300zyTduyK94kc/G8aSoFCXfyAQ8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KnKJ8RT6Au+N6RQstNStihdonlQcLicQ6lZmV+MWOj0LN6Y9gG6L6kfdtzoFJcuw4H6jG2tlEZ6WD+RVN/Rpnr7XDrGWRVSmvQxvYfnfVl+fDQ1+jBBgG5pxqSYH46Ai0vdcnJNE2iDzK+/gJLwqmnnBVkahMsMihZoDPDWKWzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1777542664;
	bh=xFasOIekCNqk2K4300zyTduyK94kc/G8aSoFCXfyAQ8=;
	h=Subject:From:To:Date:From;
	b=ce5N1Wf/BCI7ohAfzc4nVKUeqcs94IlfaHYCDW6fu0yiy6MH/dw0ITY8BPvMMwEta
	 CjHpYJ1dEHM/OVKVBKhNHvvhSChX1lICrDZwzRfv3OBj7WcF+BB0pVLp3Wq1BMF0VO
	 91N9lu0uvASqlTuSZXpUtRZChAFdEK0oeFtK4JT0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB575C2BCB3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:51:03 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCE27380A965
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:50:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.204 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 30 Apr 2026 09:50:18 +0000
Message-Id: <20260430095018.release-5.15.204@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.204
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.204.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.204.xz

Linux kernel version 5.15.204 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.204.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.204.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.204.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.204/v5.15.203

