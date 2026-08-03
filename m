Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E252A3DAAA5
	for <linux-kernel-announce@vger.kernel.org>; Mon,  3 Aug 2026 09:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785749163; cv=none; b=jx40QyVSMHa7OiIEfnbaM0cygwtnxwZefcqv56GEn+m+wZCL5GfGkuSBFm0qudk3jlsbNmtKrptGUP/qf82DcM9nu/ogpRJ55htcVnM2uom031Mjyo8RU7YGhS0KV+X0cOsq2chEfmZc6wp75LF1ZnyudB83Ozhsv2u5BOVTouU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785749163; c=relaxed/simple;
	bh=CYn5cZjKqkuCXWxPcBIV8iyB97FLaW4DH8I6H0GKujs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mtaTg+A3QsOK63ASaKNNb3Bx6OJW18BCpgj/FiYVPmr7CXFELB3vwfxXFtFrLxWnMLKZEubKLFLTg9XF+nM1gjiXqrd6Ky4V/DU3Pw8PRCVbeKMYD93Fb84nztyp+GzdwOnEUs34+6VN576Fs1nu6Zm5U+zJM/n6SG3JvgNTTYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1785749163;
	bh=CYn5cZjKqkuCXWxPcBIV8iyB97FLaW4DH8I6H0GKujs=;
	h=Subject:From:To:Date:From;
	b=OE9Kz1jEW2/Ng2LxLAF3kttZ7K9tHQiSJoiwFvOjBG2LO8gltpEXtlFCUQioUcBLv
	 XXqikrs4RUOsr6EV2HxVYRXZ2cuMWi811mpi0fhQw6hAUROv30SshT8I5uJCMN/pyF
	 uDN0dRlXleIRO/2qYg8P0GcEwna+C5QcXULcj76o=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 653441F000E9
	for <linux-kernel-announce@vger.kernel.org>; Mon,  3 Aug 2026 09:26:02 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D36BC380A942
	for <linux-kernel-announce@vger.kernel.org>; Mon,  3 Aug 2026 09:25:24 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.148 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 03 Aug 2026 09:25:23 +0000
Message-Id: <20260803092523.release-6.6.148@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.148
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.148.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.148.xz

Linux kernel version 6.6.148 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.148.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.148.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.148.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.148/v6.6.147

