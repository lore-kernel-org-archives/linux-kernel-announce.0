Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72092245031
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783195248; cv=none; b=XqCeu2SI+f6V956HfPSkTqBAVKLiasRqGDDe2/3X8d5+FP69YGAihX5JnV7gUsiVVCVuc4I21goCRbnElZo+siQUOwjZ5UK4VVMGvsDBt1rJNBWQGKLlneqZU1ZISfUXc0j6VfPuTyeoyy1P3k4BHDSO+YPQBwhjr4urveli8xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783195248; c=relaxed/simple;
	bh=58l+fFJUSsSSAeBizZsZqhdXFB53CwVICUi0dGocs8c=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=HAgkcSA/JdqUnKFImf/zJXYQneWjNyWmi35kjzNBQ3ZO46fdiNWdkzAOWdmBngnfvL0MfDhP6kWm9R5l7adqQT7c0VK0uRtoorRnw2WOXg4G4iK1OQUaemjjF01zmGRPAJG+wsNP6thqYZ7KyCEC5UYXklbNVarYRcdNFaitoW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1783195248;
	bh=58l+fFJUSsSSAeBizZsZqhdXFB53CwVICUi0dGocs8c=;
	h=Subject:From:To:Date:From;
	b=lDLPOxzFYbdligUxX5DGeJR5Bz8Jdk5x2auYln5wkZV2GR/hgaisDQpRFjFdwujI6
	 CPJs+19Oat/mJ3yGz6K34/9CAt7A6Z6kx4D+hpV6zpg2J7JqvY4mFSl1JInjoVamZX
	 NXiCaqrDkc6P+ng2FGxlaCqinIXEHeRzoCbKL1gg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 067A81F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:47 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D0AAF393A573
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:29 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.260 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 04 Jul 2026 20:00:28 +0000
Message-Id: <20260704200028.release-5.10.260@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.260
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.260.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.260.xz

Linux kernel version 5.10.260 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.260.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.260.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.260.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.260/v5.10.259

