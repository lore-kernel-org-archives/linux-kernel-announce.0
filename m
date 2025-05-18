Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B531FF1C9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 06:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747550409; cv=none; b=T/MYinbm8i4qFifWOPULYNOd8VDromFdJvQObIYXJGlCN3YcOfiCx6QDt1ll5YWFDAhgO55yg02TFCoRtwRXDqz7DpljwHPMHj2xqAUw9NiDxgXlNVYjf2HxDeN6a7n4Vz4ZwjrLpiv4D+K+4Kk672ssPTKc+ytA1/Ao3LkDVpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747550409; c=relaxed/simple;
	bh=PSDGEihW+umcr+pKen5l5H6ysRhEmr6hjqRV7ZMrGvw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=HdiXHeg6pzLmatRctXbpeLLh8qFj/OlnWB9P8ZEUMW8cwY54QDJ8jbCmQXxatmPiJFKaw7uwq6v3FsH10FgUC1mOIt0R+my8WJ+KR45mG8pHSzqiuMtJUFpGO5vwHWTpmP5W815WA7flPkuXPyu7vANzrp0X5oa7rpvCY+/r5Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1747550409;
	bh=PSDGEihW+umcr+pKen5l5H6ysRhEmr6hjqRV7ZMrGvw=;
	h=Subject:From:To:Date:From;
	b=pE79tCJNgGPRmGJX6CKzS62QVNY6o+88frM/jkP9Wt8r9NQUclvkSpZASuVcltDd7
	 Gx6Mu6s7Nkftw03JnBDoEwBTjvVfw08uPq3sfq15ORuEp8K8OdJprZp/050liWBR2A
	 vRAaEVib+ntMysPf3alDOZpP1P0vZphDNnPJ10No=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A770C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 06:40:09 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EAD72380AAFB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 06:40:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.183 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 18 May 2025 06:40:45 +0000
Message-Id: <20250518064045.release-5.15.183@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.183
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.183.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.183.xz

Linux kernel version 5.15.183 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.183.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.183.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.183.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.183/v5.15.182

