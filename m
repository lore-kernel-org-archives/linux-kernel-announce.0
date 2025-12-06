Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4201DA0E1
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765057718; cv=none; b=s1UPwybRBJy2XXQOXllHFcY6rBUlnVEPIoGng/yMmWan1G19cZi5PHqv3rQPF1sURkEbCwxd9x255efuewV7aWf2TV9kMQfQRPML8/dZgeoNaYN/AfrpudCymV1qnHFX38TqSuwvNOH2cBurBBESu1gS31FzSAKrHpefthk8KpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765057718; c=relaxed/simple;
	bh=V6ZgLQNIdJN2pz/SLssYggI0iNWwI3qb8KNQBBaw1IY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ggi/SNxU3Ozbn/OL67pg3qFT696k8p+3MQxpXPC8cX6XS5Qt+mzBOUmmrlz9VtAAG2B5D7o7ocYjyDUiB/SevXgJmt+mGFd3Lzglmic7MjxJiZl31xijD2/Yv+10av2b47xetQU8vt6BGzz4FbchBTdsSoao1CQtHvnhmvuRDZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1765057718;
	bh=V6ZgLQNIdJN2pz/SLssYggI0iNWwI3qb8KNQBBaw1IY=;
	h=Subject:From:To:Date:From;
	b=wDUyIaPZ9T0R7h8kyiNMIFaG+XQHdxPtDHbcrDrqoIR3+efxcylUupsX9kpvPWBKX
	 oBgsxJRvhGRi6HFfnF9P6c8OCoWB7XVcS3POhZBgCkTBatkaSMqZSwQCiTasUYE6pp
	 UeOPqdrqUuoi4sK1fLxtN9QHurkZKLmzpke6shFA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96010C4CEF5
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:48:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9424B3808200
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:45:35 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 06 Dec 2025 21:45:34 +0000
Message-Id: <20251206214534.release-6.17.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.11.xz

Linux kernel version 6.17.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.17.11/v6.17.10

