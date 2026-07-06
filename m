Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D711632E7
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Jul 2026 01:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783299686; cv=none; b=haOAqRdGo79J/9yO8nuJWburlLJjjkGMscb5UlLECWv9oWIfwpWptMfCJOY7DQZj6dWenlvFi7TmbQWPDSXylF22aZSWmY9uUseWFyfPx2tZsQdJ7LXaGdCKDa0dsvWDa4buSG7rL9pJlwHvZkirubtq0vcdYuAXdg2G0DM0w7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783299686; c=relaxed/simple;
	bh=IGwvc+qa6mBhIEYrH70cfPSwApIxa5vzZoPRvqlmW90=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=AT9SG4Utg2sQ5DXoEbvonb868XnIWRGWvkGSuKrSjwm9wbjzJPNPtSeeJ4N7ojhHDB1WudiAZwybNqiFxd/OYbX5Z2nfprX8YOwE4nRq7l2HD+7bBP3Jo2DGTjO2b4ECG382ElAjR5zKocLsDDCcnQb20V0889HbrM/sBC+nTEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1783299686;
	bh=IGwvc+qa6mBhIEYrH70cfPSwApIxa5vzZoPRvqlmW90=;
	h=Subject:From:To:Date:From;
	b=F407Yzm5MlEzxNqRvu1p0fhljNrAVvFCL1EBVhwLFaXJWmc/QVqDq0limhMMbftno
	 OTlHQaUCBrgEHzEtZAAf4bDpz7/candfGOPOex6FCF2HgnElQngEIQWEzRcmNVWLGw
	 KAYj/5X/qIzDY/hsoArQZcCLReO2JouzXli3i8VU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15FAA1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Jul 2026 01:01:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1CB933AA6A59
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Jul 2026 01:01:07 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 06 Jul 2026 01:01:05 +0000
Message-Id: <20260706010105.release-7.2-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.2-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.2-rc2/v7.1

Linux kernel version 7.2-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.2-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.2-rc2/v7.1

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.2-rc2/v7.2-rc1

