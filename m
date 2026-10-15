Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C887B51DDEE
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 12:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792067128; cv=none; b=OcSTYv1MA+w5ymNjHB1tONLO8JMbVfFq7QRsjo62kdFq939CwJ8aXIsLo8eIPiSI+TvxRtgQmpYtRqzmCUXNL2GPF9WoBITk9nWGFzk/vrYPQtsb/gT1YJcIFOjU+KBy9pi4s9ajZbfmx6rjlAqBAnOdKODJt5aGsT1fpUzCQhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792067128; c=relaxed/simple;
	bh=2N01ssjkX35nAcs7OsDIZq3HQQtou7pj818pfmPmLIs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=b+M0971LB75AY9bTVtj0pnJH71JdAV+wcktXVoV5oH1EGyDlxGrRDgckwZTgPuBZAUlcWRMywJqI/7GGOnflYtU8s/F1y2Nt9VUyC8teZk3KdNChPMJIOYGq3y34OnfROmaLVI03G7PVFvX7y3tWNHf7LGV/sxQL+xCUWt/S1rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1792067128;
	bh=2N01ssjkX35nAcs7OsDIZq3HQQtou7pj818pfmPmLIs=;
	h=Subject:From:To:Date:From;
	b=mVG3gIFdUD++X3zPCE3/VzCmb7Snj5AV4mfGI788pr7GiKa0FtgCzYQ6ZkYBix3jM
	 wfE2sMFLVH9zez57vcsx47Ee3lEzYWsOcSSvEXR+8Iku3WlCjAOLvIlGgNeRF6EjSl
	 sADsu86p9VDHCpGWypcaVDoxX8vkf4bKURDE2UyU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68B671F000C4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 12:25:27 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3D145392EA6D
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 12:25:27 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.223 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 15 Oct 2026 12:25:25 +0000
Message-Id: <20261015122525.release-5.15.223@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.223
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.223.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.223.xz

Linux kernel version 5.15.223 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.223.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.223.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.223.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.223/v5.15.222

