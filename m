Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE53C22538F
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 12:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759406447; cv=none; b=kDrMCiQWBGEsSCwbWikMRtVAbcoB0cFn0eaVkeo9Zugkiej9HY/cJ6Y5ubt4u7N0BAkV1DVe2oRHzqTO4kJT2FAUpV+vBDJl0MqxkHSx/Aqy6+gZpaB+7WxIA/wES/oqSURNolSmcWi2PVHtNlFKEzJfhC6tdsLswgnSgtIk2Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759406447; c=relaxed/simple;
	bh=XrhOmyj/UNw8Eyeu5FgPgO13kNfhEnxnNMArUWSQXEM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=HvMCCo+p7eleB5OGTaIC3hoPKJCRy1poaF87w+XqkKdR3FwCyeaR3h79wvCcuJbm8jZL+9ONd+QaE9voZMfnsqMtprIATbDdpYm8E0I29esEow37Q2Gb3OOCNiOeCFHJCV7c1FiqWYo8b3ykOIZ43E2+SIb2CaG8SGag7jNqKTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1759406447;
	bh=XrhOmyj/UNw8Eyeu5FgPgO13kNfhEnxnNMArUWSQXEM=;
	h=Subject:From:To:Date:From;
	b=HvALnLHbYiJWXlR6bNHct3BgbcH6d04rGS2qeBtc7W0KjoqN5jr3M9XE6L5FoYI3X
	 BmV2N1rEssr+NYx7dqsM1oAhM6bemCtFHsGzHuzA++ZXNv3jKUQqiHrBG8pkpqJi6M
	 Ie25GqzR0u2J9zzcSPdjjraXZVJaYfPi+PigPjUw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78F36C4CEF4
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 12:00:47 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B125639D0C1A
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 12:00:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.155 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 Oct 2025 12:00:39 +0000
Message-Id: <20251002120039.release-6.1.155@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.155
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.155.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.155.xz

Linux kernel version 6.1.155 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.155.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.155.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.155.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.155/v6.1.154

