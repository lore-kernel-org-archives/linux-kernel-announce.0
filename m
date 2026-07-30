Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FD83B05B0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:20:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785410458; cv=none; b=lydWKbG4O08RA2qJiACvRwLDFE7+1cMvjQLx8JDzPUfjIkHnADkHMCMaFKb18FbpDTzyjTXLTKR9aZQ5xQgoAMTLu14Asgtp8nt4re5ZeQ3GzXsC+WI/SrtBenlekXeWjZM3YMt+2I3mULM78yzqhvYh3+c78RKIKX/KLbglXDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785410458; c=relaxed/simple;
	bh=+3Kpj71BvT1XQrQNmMbWDAKIecTdW0N3ydcNP4ZjtZQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=FutY7WLiCEvNtEElzgJ1Z9CIKNEMNnShdhCv88rhIJPQ7LNi0G0iAi5vm5Gn0s2JIk8FNjTQJmgrYn3+mE2iG9LFvNCkzqbKLbiQTbhtSsUGseErK/USGnb6N2RpeEY5C2EDD2u+KAcABKKac8g/6kmcvBbtI9vojdqnhzm0Hjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1785410458;
	bh=+3Kpj71BvT1XQrQNmMbWDAKIecTdW0N3ydcNP4ZjtZQ=;
	h=Subject:From:To:Date:From;
	b=pb6ly4kAYSGDiA7/NI7Zh64B7F2AhOtQ8ys+5iTOJguse++hpNr0Rz21LXo14GH6j
	 CaG9WuMEtbhprpvpWZzRrp7KjIERcIxREIB1TfYncwmQMuexwv9zpFZlBmEjAOrnUx
	 iLT1SxLqUjh3dlOLOKXWPRj2l7PcTiJsVxr6HWGg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E94301F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:20:56 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D0E3B38119C6
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:20:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.147 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 30 Jul 2026 11:20:20 +0000
Message-Id: <20260730112020.release-6.6.147@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.147
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.147.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.147.xz

Linux kernel version 6.6.147 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.147.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.147.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.147.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.147/v6.6.146

