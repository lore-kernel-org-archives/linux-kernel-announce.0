Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154A423D2A3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Sep 2025 09:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758791741; cv=none; b=JGJXzq00M73aeDfqjGv182VXW4VBmkGAr2E7kP9Tw10rCdQbRfl35f/TqbhxM8SUzTaA7YYcmyRRMxCgWAWSSpSqjorzHa6tN4Qeu9jFpfSdrbVSgVv+yp7DTDR7Lj7fsEB97h79B08ZvxN2csJFiE5XV6CeyJD5NZPNIcX70r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758791741; c=relaxed/simple;
	bh=Z5MFPqeY62tg+aq7UDSbQNAv/l2sViYOH8skCk3GBT4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=evE4538mWESpwGzOjuDTXMP0xZPMSy50+n8B0Zt/zLEukSyFR2Y/xYZKLI9ll8r/FyqfhUsIc0Dv4JN8KkYyaOn0Kmydjr8Dq2165ARNbjIVuEVSSY5k/pUu0QgoAe1mqeEDbe9lmE18sSURoXc4j1aHgHo8ubAkJe0ULUoYD7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1758791741;
	bh=Z5MFPqeY62tg+aq7UDSbQNAv/l2sViYOH8skCk3GBT4=;
	h=Subject:From:To:Date:From;
	b=HSWvWMUSBpaZhaizY/EdfoDeVCCXoYsHafYGgfLQi/SF8FpHIlZlrulM1hOL4cQel
	 TQylW19ef0Wpmnju3gVVphWLqxklBj+FYz413DEJvEnVw+5k6ZZl+Y0XZDMGoJXy30
	 z3B7GrBxMj8feUqzKeriCUQj2ZIi4Tc6S6qs4wJ4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF5FDC4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Sep 2025 09:15:40 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F0F2639D0C9B
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Sep 2025 09:15:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.108 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 25 Sep 2025 09:15:36 +0000
Message-Id: <20250925091536.release-6.6.108@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.108
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.108.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.108.xz

Linux kernel version 6.6.108 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.108.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.108.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.108.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.108/v6.6.107

