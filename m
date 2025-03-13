Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71D8265CC1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741868419; cv=none; b=DRhEFPNSsgvKcI9CWmS2SZF2Bp3J0a+nwvvjghNcp6awxDNVJU2NDCo6fXhvxGn7xzTNA7poOgg8oZ8GrAwhvswhjD/4m25pRJ3LeR/mrLs0aP0vdtIpJA6I6o3lAPzfdyi/xL/wYE8++8dcZrmgO6778KQ6WVk7OW69YGmv67o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741868419; c=relaxed/simple;
	bh=/j043XFt9iaxzS2/iuJyYV2jwaXHVWtGPGA0IO+MiCU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=YaInF1Dvr7fcqgI74sIHOFz+8so+eq0LF8GxcZ3w+8XW2AZxDdiWbqSfArXHBjoXKJrGphNWGLeMnggLMNpV8pgPhDa2sxYDgC6sJRQPbcVPZ6Nzaqd6vpzwpP0JBnJIvjqRvIehtF1lh+nc/SvzsvzMNxEbu6Ee6L9WGpXx0Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1741868419;
	bh=/j043XFt9iaxzS2/iuJyYV2jwaXHVWtGPGA0IO+MiCU=;
	h=Subject:From:To:Date:From;
	b=k2LKIbJ4h/kaFQvvOWiACEkHr3RPld8Ptcvg6dg0SwIysXmIfEHY8PjvJ7de7BDnV
	 K0SnBPmGnua/PuwRNIkS7CZZCC5HBc98mpaTe+igpiMo4hlH4qnOqEIsEgGVSo8aFY
	 0qR9y2J/abCzEs2KzwUwIsGbB2ulWEhaRqppMJog=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 385C6C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:20:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EB65B3806651
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:20:54 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.83 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 13 Mar 2025 12:20:53 +0000
Message-Id: <20250313122053.release-6.6.83@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.83
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.83.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.83.xz

Linux kernel version 6.6.83 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.83.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.83.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.83.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.83/v6.6.82

