Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC5030FF24
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 12:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759406745; cv=none; b=LWqu/gK+moxfxs3fDf7Ktn9HzLEhu3rwOHc+y4w1SGjnK/6zXkTnZir64RDJNdrA2AuAItoa3cLz4U007Fq1loB6P5AXmr0U2jBIbfqdH7FX/ImUYhntnA1kZ5eGoVBIv4gh7piIAv5SgPcqSo0uA3+GhMFwiczNy0vm5x6p5cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759406745; c=relaxed/simple;
	bh=acjNRmx+WfAeyyz/b8kdUM7Udbay/0xHaYcvfpVf+zs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=W5alDokYz0cE5CyWZIGsLFpzBHvv0cst8UUVL/BLmVmYXqqFBdyVC+23LcjMuDV3GHQZfo16IRGN6NgoAne/LQr7InGPjVQdXE4k78kRQqZm6HTV1G6DG4gJ5NyAx6R4YSHleR9VOWBJcsVm5XpEi8QmJwze0K8ai1d1T42VlDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1759406745;
	bh=acjNRmx+WfAeyyz/b8kdUM7Udbay/0xHaYcvfpVf+zs=;
	h=Subject:From:To:Date:From;
	b=PTT4g1Zf2DCzwlbN21JfL5G+ClUqx9PrW3t4lqxCcTt3sBUyr1rH8m3j1joyQ+lgy
	 AcY8peqB7FvcR2xWDv4yLiufeJmJoypc+U5d9WmbKIpPJ4WcTlcPh4asKTzktSDU5F
	 KUxIqX8mEedEOk+uf/TyKz5I4NUkX6E9rQTHLwbE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB105C4CEF4
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 12:05:44 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE7D339D0CA0
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 12:05:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.109 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 Oct 2025 12:05:36 +0000
Message-Id: <20251002120536.release-6.6.109@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.109
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.109.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.109.xz

Linux kernel version 6.6.109 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.109.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.109.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.109.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.109/v6.6.108

