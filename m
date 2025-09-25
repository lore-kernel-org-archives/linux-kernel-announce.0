Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A77251EF39F
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Sep 2025 09:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758792642; cv=none; b=K35L0AnSx2N2AJiF2x0cq8xu3O83vfnAzqW7A+2gsFzANUbK1lkjZOgQEKeRIE+P7tNNY/EZ7gqRD+r7JymZ9HyEGJG2Wab/KKfC9paUZ4rHTkD3nflGFXLvr4DzV1yklEOnhJ0AgqRKuTwPfHcdHdtHUefYLvCZJjCG3IDpTt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758792642; c=relaxed/simple;
	bh=A+JywUY8cz+4m9DtX5BaO6wigeKugui8Bbh6oWuMfbw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=HXa+oUBnm8QNrFbpagZ8bvBFEoftwsB6jEc/wCaKfLmoTeuc/I4XF9y79R8vvP5WIMqJxy/LzQn0EGC9quJ0GWIYCTamS4s1Xt0Buj6VkalkigHXtvY/6ev3zwvXsdvcbGI3T72lhV32v+4OaGh05Phn3EW9vS+psT3NzAcwOXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1758792642;
	bh=A+JywUY8cz+4m9DtX5BaO6wigeKugui8Bbh6oWuMfbw=;
	h=Subject:From:To:Date:From;
	b=qJ8S2B/XgYWdROHT28OrlxgLXQOTqRsfQ5+BT6DeY4nUlJoBsGPBXqk3f4Cccjo+d
	 LnY4n5UHt0PPMKohM0H8pQH+Ua1wmYMYOVC8gMWUAz49E3K/uzKgoeQg/wO+BoupO1
	 l1EU/Uoxe7S7KS3wFxqG8NMFu/SY8cvL6bSPR5Jo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52184C4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Sep 2025 09:30:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7446639D0C21
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Sep 2025 09:30:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.49 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 25 Sep 2025 09:30:37 +0000
Message-Id: <20250925093037.release-6.12.49@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.49
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.49.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.49.xz

Linux kernel version 6.12.49 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.49.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.49.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.49.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.49/v6.12.48

