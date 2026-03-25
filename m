Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D1213AD05
	for <linux-kernel-announce@vger.kernel.org>; Wed, 25 Mar 2026 10:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774434032; cv=none; b=bNNiS/IzZnvrw3ZmkArEJ9ugcsMm27MfyCJcpzQMAvLLfuNdrjiqblg41BWxWy+znRQZh85U4NofWwEecNJ5iDKvC6nwh3ILWd3uvV7VQFbQGAGRZjzVawkaz8tEnunkPoNkzN8hPy8CdY5oFQsuJ5pxXfaeqcYlIBfrrBIcE1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774434032; c=relaxed/simple;
	bh=68bm4KEsMP14H1K/f+UB7+/Q8EC26qEC2EnWTU3a4cM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bMJAQcFgdjtfNXTN3xRkQbuWYaML4aXzMz63eEePbq6dALKvb4Fv56KjR75kaLdEH+6SyNtYIo43UbdesHth4a1Y+6xfiZ03IjgZ3ZvKzUcmACJfBRkR4XQj91CFJkkj35Hx0QD2YcIJY04eeq0Xi588Sk2SOCazJsOZItvF+U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1774434032;
	bh=68bm4KEsMP14H1K/f+UB7+/Q8EC26qEC2EnWTU3a4cM=;
	h=Subject:From:To:Date:From;
	b=HvHcM4KAd8KYimd6yA0JHciLryZ3BUOo6Lvno/YfccLRP8WbEsyVSO34YJNE+BTm2
	 zQ19G/dZG5nDCUlQ8IJiF5y+UuKYMNs1i9ht53RQLnW8EitbWlo17ECM/yPi05/avJ
	 IiWsfowfUCYg+co/ICMN3W4EnpUBNfcTtHO0BEDI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B70FC4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 25 Mar 2026 10:20:32 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCD6E3808204
	for <linux-kernel-announce@vger.kernel.org>; Wed, 25 Mar 2026 10:20:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.167 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 25 Mar 2026 10:20:19 +0000
Message-Id: <20260325102019.release-6.1.167@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.167
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.167.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.167.xz

Linux kernel version 6.1.167 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.167.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.167.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.167.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.167/v6.1.166

