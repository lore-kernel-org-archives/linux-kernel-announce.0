Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB062BE05A
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783195243; cv=none; b=bWeXMMWxixj1DHMUsxBSYYp5ohknqwjdZkKMNf4EKAzlf78XNVYnLsQFxTPgNC2HzeGVR9SmovvhEKRMz+NW2wuu02jl2b3wiWUO4IXxIwewYf4qPu2meC92ZnQ2MS8mj2lUHmWgH9feQJjKCw7EP9AvvuBCQIv5KalKV8SBaDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783195243; c=relaxed/simple;
	bh=m0Dam+ho9YmtJzOuY9LBcNdTO7cM7z/c0rfQ0/GwAMM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=slO+F6+j0iuw99OZbS427KpTpc66PTnmf8eUNMXCotEnRx7vXNIu+1rTnrMtaPn/xzoSqvVvu7pBArq2iZJIfpSrcBl0E2fn++FQrYPKzBlhOJQWTJj9UXf2YLO9BOlrlWW/xd93WVH36ujZAwvCRxT1y9tmyGeObp0q2ABbE/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1783195243;
	bh=m0Dam+ho9YmtJzOuY9LBcNdTO7cM7z/c0rfQ0/GwAMM=;
	h=Subject:From:To:Date:From;
	b=ZRe/uUxANjxCI117GIDm5M+blyL+JiZ1BHxonQKolsLuGaHe+Kr35ALJV8jkwSwyA
	 YbQPJx5qmssv1usltjPLpdXGUUy651Bizd7bjQV50Vu/I549XP2ClH7ZvhDzEqHUym
	 pUGM5KDbtAajclYTQOhxKYE6PoBz3SGDiUjB+7N4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81F811F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 569E7393A573
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:25 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.144 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 04 Jul 2026 20:00:23 +0000
Message-Id: <20260704200023.release-6.6.144@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.144
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.144.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.144.xz

Linux kernel version 6.6.144 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.144.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.144.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.144.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.144/v6.6.143

