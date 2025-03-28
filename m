Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EF71E7C12
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Mar 2025 21:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743197707; cv=none; b=azBXRHS4LBE8LEpTeyVXtKI5MGee19TbW7YyCnDfTzlsJpeLjN98fOuUT7aTPa9voApcxnoAgpJSl2f3hvH1eK4vJpjbhpQz7G55gpDZ7mC3E6jj9nxuAzAgAr7dSvrn22gioxtNb5vHQMp+2j3uNNj6r/WNvDN57nRcK42i4MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743197707; c=relaxed/simple;
	bh=06W9yUGBR0vamPb0qgAml1GemBuv0x0GyLWNaNhcFNA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=lD8s9N48PV2UNZSLk7+J11LkMppDfU0u3xN2DYEvO3iPNS3ja4P4AwUkBueG/5Ieo5K/azWkTnJUzx8WNe9s6H7lRDX5GVMR/sG6RqArjfl5IqjWT0qbhZTZ5DBcxc2mFEEutJfFqrOmNTisD7m1koV87+IwdX2sZQCKLz2bc+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1743197707;
	bh=06W9yUGBR0vamPb0qgAml1GemBuv0x0GyLWNaNhcFNA=;
	h=Subject:From:To:Date:From;
	b=Kl9XA1hdNMdjQRTyvjGNYCtEOtZyzJ8kGUzU1U5NthCbVSsRl/U+/mG9n4/mlQQ8J
	 OQPtNSvQJkjDXebZORBdPNYtoo5gT7QHEkDEP8D7IzGWjaJ8AAh4iWThCBxkHxh76x
	 0V97Hw33j7K8D+zY106BbwNJxAxgDsO5ztZ0LV8I=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E682C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Mar 2025 21:35:06 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 389B43805D89
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Mar 2025 21:35:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 28 Mar 2025 21:35:42 +0000
Message-Id: <20250328213542.release-6.13.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.9.xz

Linux kernel version 6.13.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.13.9/v6.13.8

