Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E87A1F462D
	for <linux-kernel-announce@vger.kernel.org>; Thu, 24 Jul 2025 07:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753341022; cv=none; b=C9GwfqiACB1jxv6Njc5h/jIuV5Ma/OUjSmbOP/QPcg0E4sUio7s/L2V++7EzkKoN6tFNm8Fzak51WBPupObMjoa1/lx92Lqx5u81GXC3e2RTOaqUHXEDDP6aZ6tO5MpCBG3I1wrVvmhq0alb1ccc+yfdA0AzEoASaqJoIc0W/SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753341022; c=relaxed/simple;
	bh=1dE0x28HMWxiQI49HEAUMr6XxQ/s6DCPnteXazalHr0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NXin3TMB29vnOClNCkdHGxLKOcLv0LCCo0wmfI2/Yi1jfMWXcLCWdmSKIpZ6uCj37soE0k0Js43Y2P3CZB98KTHU+wPJx6tmcBoQvkoDM3OHTbUyOygzg99YHkcfwgNh8yZk/4clZRNpUTDGnI+yYX40Xb652ZwMXmqZzAjbsfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1753341022;
	bh=1dE0x28HMWxiQI49HEAUMr6XxQ/s6DCPnteXazalHr0=;
	h=Subject:From:To:Date:From;
	b=VNGiTwL3oFWIwsNT/uiDA33SlRFknwZ1vKxaDOVSL9lwdOVwpHzYpikBtt+WPwY7+
	 ROHoUaUmO+ucuxhkAc36GWz3d8My8jXBHc4ceneLZ1FjvrsOUg9PiTv+bbcfXYKfo6
	 O+6oRcbP4tyeeYHQZdXNMJjuW+B8pmw14OMNC+bA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CE96C4CEED
	for <linux-kernel-announce@vger.kernel.org>; Thu, 24 Jul 2025 07:10:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 37FC4383BF4E
	for <linux-kernel-announce@vger.kernel.org>; Thu, 24 Jul 2025 07:10:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.147 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 24 Jul 2025 07:10:39 +0000
Message-Id: <20250724071039.release-6.1.147@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.147
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.147.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.147.xz

Linux kernel version 6.1.147 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.147.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.147.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.147.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.147/v6.1.146

