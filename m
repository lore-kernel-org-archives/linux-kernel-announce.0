Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B7121AD40B
	for <linux-kernel-announce@vger.kernel.org>; Wed, 14 Aug 2024 12:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723637447; cv=none; b=WRHK8zFhlJVAmIlupOrG29pHofd80/BY0GPJerJ40YMLaMVqFItNzQU5o5/SUyecCdREvjX7cfvCVPdHzBbpE6PrXYhZO0BRNciOhf5+PLOA6Jq8bAWTEVoSn02lTbIPsVBOKgqAzCra7a+wJjXBzbL5cUQ9srS6B8nlOgobNOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723637447; c=relaxed/simple;
	bh=zbwIZPRxHnzJmztuBrL3otLw3USWULRTJLaHwYz1f6w=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=jeX6QlFuILbRsW/QaeMJdNZg8vRD3SmFzOjVvKFDEv+gRtAgT0xl+RIQKhEbDvNEULdaU9xi37xRjEUPueiQBglQSX+AQ1HNcDkfFWvsNI1oAZkHWwZfc3fjqHkH0oSMaL8jkMIXrcbkQ/jbpDjTq5sIpKe63i5UHGf1BNp2SZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1723637447;
	bh=zbwIZPRxHnzJmztuBrL3otLw3USWULRTJLaHwYz1f6w=;
	h=Subject:From:To:Date:From;
	b=YJ2aBC8u+fLG7qN3w98thVc6cNTLeFE5wQO6YBVDaSlk9MlS6IvrMooykM+bCBhAd
	 f0dlE6/YZQcCWT7Fjs0JR3tnF8mit+/V5Io4zHJk51DZh1VgUCfF+Y9XlujC9PQIxC
	 lUOHlJ5rlilPepKqZe9MmEzeCB4K9bdXm+Aw0W6Q=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45E5EC4AF0F
	for <linux-kernel-announce@vger.kernel.org>; Wed, 14 Aug 2024 12:10:47 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7601F38232A8
	for <linux-kernel-announce@vger.kernel.org>; Wed, 14 Aug 2024 12:10:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.105 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 14 Aug 2024 12:10:45 +0000
Message-Id: <20240814121045.release-6.1.105@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.105
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.105.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.105.xz

Linux kernel version 6.1.105 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.105.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.105.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.105.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.105/v6.1.104

