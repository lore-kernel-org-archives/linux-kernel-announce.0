Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3119149551D
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 12:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788353796; cv=none; b=P1p7e3tT3vNx1BmzxkJUkHKodKGZSj/FidTRsvant6SSQbeCDDGHLiB1k/rIU5UbtU3cQir32Gn15/ByvXU0vmPldxZJmAwsVjBg8giJ8dI1IkWWaP3Xl52fqpFHsX9eoxV4efnfDbVDdIbYxT1ldbCyoj0p/LN3NJ8ax/Uxk80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788353796; c=relaxed/simple;
	bh=RGQGr9uJISzOM6MN24/vAXhrJ06HvALa8QGhs0LzFa4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=O7Ya1uVlDdyfaCQDNCSj7lx7MpB96OZB+LTy4BnVyUcvFAvsgsQF/wRWW9y1AD5q611Lgj6eJPPFbEyEqcGV9Yn/2gYwVkKuO8JW8GjN/BARnBLTXnx5QYTyq8RXJubSVnXowdyAGJb2umWh3mFvUO7GTuyVQxnsCf/OBVnRIFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1788353796;
	bh=RGQGr9uJISzOM6MN24/vAXhrJ06HvALa8QGhs0LzFa4=;
	h=Subject:From:To:Date:From;
	b=OHFcJGNt60ikkHS+KQ6dRmfiEqsFJaVPJuishXpby3bPwpnjsIHSAIx9RbRPF5Rp7
	 6NXBRsnZf8Q8cxRRgNHY90WZCZ04EwyYcS3/PHzGFkYCuJgWPUQJNjJl5aE2kSkdCy
	 nuDvcMuISpWsqPcqhs4o4ZuqzYX6cPl1vaGVXaYk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 359F71F000E9
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 12:56:33 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 5948439263B8
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 12:55:36 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.108 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 02 Sep 2026 12:55:35 +0000
Message-Id: <20260902125535.release-6.12.108@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.108
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.108.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.108.xz

Linux kernel version 6.12.108 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.108.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.108.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.108.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.108/v6.12.107

