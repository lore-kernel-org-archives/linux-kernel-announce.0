Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813552F6FAD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 16:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752771319; cv=none; b=ArFnEmWn7DcE6tznUH5XBbsUayP2kr8eWomMS3J1rcMKW2T7kc3DYrFtBYO3EDneOCdfq3J1o0DS84qtwCyyP8/gIdEZZI9h7inNqLbJ7YovKxSNx/f1QHg207sZmfMyVgDD1hyvlyJ/YrCnfGm1yaLPYmQIhFFjqtEsUfV+yrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752771319; c=relaxed/simple;
	bh=Tm0UQSBpQGke4rrIldxG8ZOrkdR7geRHNEuRzv+l5nw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=HMfoxNTWQCt2kBjV6jYiHKvE1epAEqPlZd1xSRzYBjt3TTTasx3x8KCj8jDN0srWoYVgYMmHv2XiRLtvoaNKQa6SOvlu2MK30syTTgWugOBOtD5WDF7WaMzGeLT7a+Sjq99tR/TV3GXuqXzaIU4coTEESLB0OtzAdLjJ97wARfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752771319;
	bh=Tm0UQSBpQGke4rrIldxG8ZOrkdR7geRHNEuRzv+l5nw=;
	h=Subject:From:To:Date:From;
	b=Od8a66FnJThS5iZYr8P25JPEkOHEkSg1kotJSWt+DpS+IFT3swD36rts4swmm/8VZ
	 7+oXxSTznm8o3wMwC9JRG4kS43fxgdfbfe6y8jlcBClzub5/PMB2ZjEI86Zn4Y1NxP
	 M3ln7BnngvX0jpn4sJRpoVyC+dGGn2QyfP/xj3IQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13F21C4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 16:55:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3755B383BF47
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 16:55:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.146 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 17 Jul 2025 16:55:38 +0000
Message-Id: <20250717165538.release-6.1.146@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.146
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.146.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.146.xz

Linux kernel version 6.1.146 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.146.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.146.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.146.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.146/v6.1.145

