Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B15D13E40A
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714660254; cv=none; b=X32nmBCMIHWRUBIsRuJpJS/h99t7xhoO7W5OPMsLQRR9dBn9G3DRrS8ToQzlBc5JJbErbJhOUpVQetZv8TQ/Rj/Mi+5MSLHZSTgYZlNv1hfc9Hi8u8GnRTHOO9+ibBytunch3CevJxYUXbHKWbiO3nNjCagfo46az/mxZ7F2vok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714660254; c=relaxed/simple;
	bh=EW7JCbUtvyS44XJtAEUfOaXELCzBojbh7p6Rn6FHSo8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KEH6abZTSCoFg3NFft8KIvg+xD1LsJImJ5GosqqBPxgXfCzGGZ8czSNLztrFjoon8vl916QY+JyHPG7OmYQ3uDN3lBBiFvEDw4yr6A53BuIudDZV1qHcMci+QPXkbLKPE2l0q6yaDRBAIrVMVPwn1h8688sFanwQ7yq7GCsPcw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1714660254;
	bh=EW7JCbUtvyS44XJtAEUfOaXELCzBojbh7p6Rn6FHSo8=;
	h=Subject:From:To:Date:From;
	b=b6DOnW4Q3V8FFr2lYwOAY2JwbA6x0hlarLlBdQRXiPsgZ67a7uYQCfXgQqumjgPnB
	 1EvwfLh+garQZtYW+wFX67inW2ABRrcK6OOQrY09JUPvg0Q9w9UgLOp42WgAmNfLD+
	 kX8wjSjGHiewH9S2SE+hJBWWp8ebqu4I6Cp7+EoQ=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02E64C113CC
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:30:53 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id E16E2C43443
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:30:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.313 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 May 2024 14:30:53 +0000
Message-Id: <20240502143053.release-4.19.313@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.313
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.313.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.313.xz

Linux kernel version 4.19.313 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.313.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.313.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.313.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.313/v4.19.312

