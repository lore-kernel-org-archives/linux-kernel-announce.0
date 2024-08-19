Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B188C38394
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724042144; cv=none; b=IKZz3BKyX2aNp0ZJu/fH0EcOptNcDVqac0i6TEsiAIiJe+LqYCSHw6BcI7rwuchn6+n7WG0b0Ce9GLZWIuO50i2f2dw9Fv4CKsszOq2g+beQ3bPpbx6eGVILkA4NRJ4n06ADhubVmwY9/5X2vwmmoH94A4rHOmG3yeVihyjbjGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724042144; c=relaxed/simple;
	bh=K9DWsMSCO7TJhH6Aagc+3GdPpHXQIlOLkW9yVYDy5Ew=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=gz9wBtsb+hZ4JeoloM0+KUwGXpaW9geM2d8tBXXKP4NczoRcagZNn6qlQ2WYyjzD/AmIZ/dnKSAJNW+pEpi4YRnvFsCvihgoR303STeIBeq00kGkS+46zmmfEsILyBcmjCdrASAOc+5Sy+hLwEQmFp+6nW5DHXmtVx/HdStz/r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1724042144;
	bh=K9DWsMSCO7TJhH6Aagc+3GdPpHXQIlOLkW9yVYDy5Ew=;
	h=Subject:From:To:Date:From;
	b=g6Zsk5h9Nxhw5euMpVYtsVeWu5xOAQRr3Fi/Kmz5oLa0+19QMQ1gV6NlmM8FUzWjL
	 tZn/0CsNa1IR+KIsTUhEWi1cgWdu31bW5LjlfOkUaoaXXoV01ZSbRzORKTos75FMzS
	 afdoKKRK+JnmGDpRfFu6yzhkUJ9UY2j4e/2LkI3s=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D945C32782
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:35:44 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B200F3823358
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:35:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10.6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 19 Aug 2024 04:35:43 +0000
Message-Id: <20240819043543.release-6.10.6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10.6
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.6.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.6.xz

Linux kernel version 6.10.6 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.6.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.6.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.6.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.10.6/v6.10.5

