Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5F419884C
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734628530; cv=none; b=ttrXBV06hXG5Rkn0cndnSk+gGekyIYiiQtwFkmN7Y85OSV5R1qKni+ZYVVxfboq9zBozsa4wD30QyroT1SfOCJyUXGWkwDnWKRfsd3zuVyghMsrnLD+flduNjsAQfbzDnNniU0Ef1AUJyZXTorVpY2bS/9cYUL45M+/PW4WEpzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734628530; c=relaxed/simple;
	bh=Ts82dxM/ZA/PKhiEkZCCs7CsQRRsCotxUEupHxqUqos=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hA6YWd8TaVCpsgDZTH7wWhHbtiE3x0H0/UjEt9l+XqL6g8ECrG0j3DAf/ZDY8lHpe1zrLDW/XuwNZE2Mt4QwCy2wCZN24mrvEEDBqtijJOaOrlWTUu0/St64qSeCn7hb3vgkk94IK9XPm7/54M+tpRsGaTMC/xeEMSSpKReVE1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1734628530;
	bh=Ts82dxM/ZA/PKhiEkZCCs7CsQRRsCotxUEupHxqUqos=;
	h=Subject:From:To:Date:From;
	b=gFGpPyHOcLaf2PqXcgQcj2tKGYFf4YKpjBsuFNwdPyLCbCEYBgu4ysaHnTlAW/6Q0
	 NY3aya1hcm1X2bJ7qLP+MXTzCB03Liy/6mV6JlnLb6oq3j9gPQbCYKPUEZtOz4aF/j
	 Zst7ACPCERP0O12JaCHgOOXAf420Bm72ywL51274=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BF37C4CED0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:15:30 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EFAD33806656
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:15:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.288 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Dec 2024 17:15:47 +0000
Message-Id: <20241219171547.release-5.4.288@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.288
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.288.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.288.xz

Linux kernel version 5.4.288 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.288.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.288.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.288.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.288/v5.4.287

