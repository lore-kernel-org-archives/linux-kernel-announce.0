Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB6621E091
	for <linux-kernel-announce@vger.kernel.org>; Fri, 12 Dec 2025 17:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765561728; cv=none; b=I1Pf+ScV2X3tTC+ike6VC7dJPN64SYIQKiiTDViSYzHVrY3DgC3WTcyoe9E2/5Biquux2xdxDoiU23d8GrMpUmGRb8/sDkIz1xvhr8EIB291k/NwlLh76datygihZA6gVmdtNswJV7JHlJT+/yPfsM8hTuAKmD5dCEgU1+PwB3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765561728; c=relaxed/simple;
	bh=viH7K3WkWGHOM5j/g8tZNVW0F2PdmjRiGzZcWXZN3dg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mBlRoUKKfZWFuysIqKDs9SdeQnxJQLH+XvaZBmeU8Og673Okm80BF0TRXAW2f13RxKGLgGLvvGUv9kfJ8j/upSn6HjZitgCdWE3LnUyPayIZ7Oe+fm6r9gj+qdceXE2FASfLZI0CQdWgnXhNqZHf0SpQCAEeRV7IDlvuXODwSRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1765561728;
	bh=viH7K3WkWGHOM5j/g8tZNVW0F2PdmjRiGzZcWXZN3dg=;
	h=Subject:From:To:Date:From;
	b=Rc3fzM9Vka/IcU9sy04hEkNVMuMspmrWApKlkyCIpUrL++/fMTBFS9GXLmUp/vsQV
	 O6BsKd6wCn/Ar+JVEHzmYQxXJOzgqMNn6FHYIUYCTlu3I2kHeYD7UPggUrvjP7F3Kc
	 oHqtTb64ENu3/bqOxJdmbRWQCMqSx9y75GUCzclE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EED0BC4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 12 Dec 2025 17:48:47 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 40952380A945
	for <linux-kernel-announce@vger.kernel.org>; Fri, 12 Dec 2025 17:45:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.62 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 12 Dec 2025 17:45:40 +0000
Message-Id: <20251212174540.release-6.12.62@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.62
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.62.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.62.xz

Linux kernel version 6.12.62 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.62.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.62.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.62.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.62/v6.12.61

