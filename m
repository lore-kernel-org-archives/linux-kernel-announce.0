Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F0827056B
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Jul 2025 14:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752156922; cv=none; b=Htyp9H45t76bAt4DDnE00y/Tj1bwDy+nDUBSoku4Sye7RIgkLs7s9H2VfWyH9cY4fCDULHhVRHSjQoXZRWt+ubO1Wd9bCnXcCNXwJ1XNbrJHbQVB+H95GSlo7cZKHLHSp6MgWm45pdLvT4w7n7mlvM0jikTp6bRzNdw+mHi41Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752156922; c=relaxed/simple;
	bh=CkVGtmPgAZUlFJgwQqpTzxt8RJJ7BaXc6C/dj68cWcc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Wosjxb2MtZ3mk4DBb3llz2bzVEOC403V/6iLlq046K909g3X4WjRixOVJLUAkeNFoRevrcdftbpNRX+u1VMmk3XpNxJuCd9BmB/PvoQzm+AzwyRjshwR7kponyMagOswwoF87RobIybRxJ5tIzu4MLvJtViJtwISWwB1hTJYFu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752156922;
	bh=CkVGtmPgAZUlFJgwQqpTzxt8RJJ7BaXc6C/dj68cWcc=;
	h=Subject:From:To:Date:From;
	b=ncdZ7nSiJ89y2FydYNG7evemdfNLH74ljcNhMCCCudRQrIcpAw/c+xp3PFwbrFtsQ
	 gdMVrvh/KzPdUYP1BSlz1Fglyk7EeqZ6hyD2NDUFR4kWYOfNKIdzWc/Knq1TtOgJqO
	 QJ9K+rAUA51kRJG8T4UjEaZ3AuAIKwLUg+tA82dE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE2EDC4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Jul 2025 14:15:21 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33D55383B261
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Jul 2025 14:15:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.187 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Jul 2025 14:15:43 +0000
Message-Id: <20250710141543.release-5.15.187@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.187
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.187.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.187.xz

Linux kernel version 5.15.187 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.187.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.187.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.187.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.187/v5.15.186

