Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46D6139D0C
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Jun 2024 12:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719490543; cv=none; b=kJMJyHuquvVFFxCH3NB+KQGSLquhzvvUISy384YyWjIVnZ3IJ4wbEJdfuHV2g198f0vMwbXioDhyWyhgyyBwmIa/KPmnlmmTzkY3D8ii9HxDz2oD9DEMu2kPw3Qe7K75YbpgLU1+hi7FU6+465KRsHQhasHslcW2lfxbO+6XuZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719490543; c=relaxed/simple;
	bh=tRhj5CUWIRaIzNWpWRrXtcqf0AZN4p8sCR3Vw3yn75Y=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=rV8PD7sK7TvGObvlVmd/7WqNAfN4iMzaOnCe27xlYJWx4H2ZxwWg5yIikmnkAUMicpjKPjylA/yEjojYjhJHjQdabAASFxGwDXX3acKLYU/Tjggz6rBEgeq/OBSjBZ1T2fMijQt9Zp9dzYCTSiOqMRpbaSLrunYoiE9R1xDWbK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1719490542;
	bh=tRhj5CUWIRaIzNWpWRrXtcqf0AZN4p8sCR3Vw3yn75Y=;
	h=Subject:From:To:Date:From;
	b=RoGj06196XR1x6qlkNIhxKufnnb0kCqPas3mecKj/JQZNNUnp+fmybxOcyh2klOis
	 b2qrjrEASvYEaG2fOSgCC8B7AfKmCGadQETPsMnn0Row+70pGlUu5/k8QvrNtRwQs6
	 FXbFa9nAWY9/v81dOKzqaJ5VAWm2C3TRRxlq36j0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CE0C2BBFC
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Jun 2024 12:15:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A8624C43443
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Jun 2024 12:15:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.36 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 27 Jun 2024 12:15:42 +0000
Message-Id: <20240627121542.release-6.6.36@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.36
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.36.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.36.xz

Linux kernel version 6.6.36 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.36.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.36.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.36.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.36/v6.6.35

