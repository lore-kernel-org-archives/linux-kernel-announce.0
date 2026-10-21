Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792572323;
	b=5SE7GWsvYv1J/ML/nh17Ri2XESEj1sO4yR80Xi0hAU/qsPYI5PlBkr/SgUxpuNCSbq7H
	 vrnv+2R5mXo5a1yklabrxkNw2W7+ijOWmAUtHkuVSaYTGyAL7qVG+t9TqRImk8MS1FL9L
	 2BZSohd9o343tAx2C4Wo6Jyv8rv6oM0JpQM0ylEow+0lRqVzMhVINJS11f9H5iMZLUeCX
	 yOKdUpBbpmGT8bhmQj84GKtJDGKCV+JcGJ/A0ucAiJ92ooZDui8weCj7AhysSXKqJ6lim
	 unP2NmIFKD807LVtefU2CZV0/4L9tHkMcOKh44PDUOxiKNJwY9tMNHg7SCDqQlnc5JA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792572323;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=YmMRQ+4AnzUbKkIMrgcBft6XLoW+aH/rohQwhL3Gl7M=;
	b=nmzaiohVfqdTcKh+2ih4usPt2SK1N5twLPzQJU+8Qn5n3IWJyKL0BYdjAg8yp/ukshSY
	 pRV9IDMjBWDOLtWY6kjeqUeJThrHvyNlbfOmlR/VsPwF79YyuqOUpjF2iwvPdSknotbJl
	 co9Ot+0l03tv8S7iLH8Bkh9V8NEvHn2asVSIj30dLKyzhYBvfPr70s2EqkU6HBF81BKg4
	 VIpYYORappVzwcSAU2cVxYHBBF+ZTufWftwOzDQ4p/VafXl4v5F7wXNuWlS+lTg/Ca+uB
	 UHOuEk7Ve74R9/e1hVtXNkF7Yypll4rirA5CDITaLbr/eCEOsiuGb4hg8QcsmCOB/AA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34365606A31D
	for <linux-kernel-announce@vger.kernel.org>; Wed, 21 Oct 2026 08:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1792572323;
	bh=YmMRQ+4AnzUbKkIMrgcBft6XLoW+aH/rohQwhL3Gl7M=;
	h=Subject:From:To:Date;
	b=mfzHXuY25jeTH8W9tFGqAtj7mEgxnaObB7M3s/ButbUpLG+RGbSphPhRnrAiyrHwQ
	 hCjUlauEQoE8R4uUiQ/e5X+9oi/53olQAZPEZ1HF3GUlHNMi/+sP+FsQp8wJYgJwk8
	 BZx8FzklqvgC71ZPKKt0JoQrHMD0QeaohaNon4FyUwtupyAU5GhaCXQXhlwTCCj0S3
	 VyrtWqPAK5R2PWyLUNSA+mJs7VKxFjKHRV3s85kNlp16DAidkHeFOIXI17Dde2HKh2
	 mkO9NX1HXmN/0IORlG7npmGXqUz+VcbeUoK16BmyufeKG2bY/73eBrEGWeATbpk/R9
	 /nPsHpdOUuTpQ==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAC5C1F000C9
	for <linux-kernel-announce@vger.kernel.org>; Wed, 21 Oct 2026 08:45:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B6FE13809A0A
	for <linux-kernel-announce@vger.kernel.org>; Wed, 21 Oct 2026 08:45:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Post: <mailto:linux-kernel-announce@vger.kernel.org>
List-Help: <mailto:linux-kernel-announce+help@vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
List-Owner: <mailto:linux-kernel-announce+owner@vger.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.160 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 21 Oct 2026 08:45:21 +0000
Message-Id: <20261021084521.release-6.6.160@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.160
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.160.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.160.xz

Linux kernel version 6.6.160 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.160.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.160.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.160.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.160/v6.6.159

