Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF74C472773
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Feb 2026 21:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772227515; cv=none; b=gqRdRVaQ3OihW52IZMH3H5WzUURk0RcLDOykFCtt1JntsrO4ukCkaxTW69W+jr7Zwan9JZpDlTCobNnYmfztAZW4/QvAR69RJEZNUTrGyLb3Xji9zqBfQVt/eW3E+V7MvcFCiThHk2R/PCSW0+bOabWUBXV+yqbuVuC7iOQDQLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772227515; c=relaxed/simple;
	bh=wDNTmYdnDHOKvGuIv78b/PDLvjPNQ/Z/FCy6YGpSjVg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=sKZCjBj+2ZP2y3/hxQSxSAhlZepmY8RnzlGfhQBn3OsDveoqcTPrmtA495ik98MjRkxHQlPFFcyLiWDC5+vzRWPpC79KBj03oRViT9hnsoxKhkOjcDPppA6eCy8tsdmTld0xNfWIJgAbiOxQLXkXfxlKjr5K10Ha+z4FQjn1Hrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1772227515;
	bh=wDNTmYdnDHOKvGuIv78b/PDLvjPNQ/Z/FCy6YGpSjVg=;
	h=Subject:From:To:Date:From;
	b=uaiFXJQr9ThpgfwaJAV+VMj4RXqm79TSYXgrK5u6VANUZkhy21weLssSKP84+yelX
	 PYlJAtKRvRfAa6AKDZq77FLKBhI3l2A3+zBerCng98EvhWZsmG1/osMrTYSAIYOsgx
	 agoYFBmeN6kCjKsO/UXh2qOFzv9p0mqn+7N49glE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EF4BC116C6
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Feb 2026 21:25:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7FCB339E961E
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Feb 2026 21:25:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 27 Feb 2026 21:25:19 +0000
Message-Id: <20260227212519.release-6.19.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.5.xz

Linux kernel version 6.19.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.19.5/v6.19.4

