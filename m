Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAED92676DE
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Sep 2025 09:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758791442; cv=none; b=e+L06x6EpJk2QJXi8KM0Nuo0iLhe8Yve5K65C0E7oyDPXd8ofltDx3+vhVz0AdvY3pFHYBWCOEztpnUw/qy6Zehogm0SQq+a1tCfHT7FUECjim/J5EHiBr1YHqC9olI23PWQYdrx6lNXDlQC+xLKaKkQsxj36V6aIWjspk4DCA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758791442; c=relaxed/simple;
	bh=JjML0vLIiL74P3LPLlu0Jx4Oc5HUmYMNIWx2jcBSJj4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bO7WE3tYuq5ErY3qpfzmk83hIpsPUa7JmqmzQP/I0+Zvv2Fs2dxKeFohbAUC6d7Bd18nAaemMQVyXM8vQ32pzgerJoWoVF5DmbwnpTmTM/qDbmMXzsuL8r5jb0NKFnL7znRllS7M7/Flc1zpjb64qaWcfDdYHPEIEAPxF6wykeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1758791442;
	bh=JjML0vLIiL74P3LPLlu0Jx4Oc5HUmYMNIWx2jcBSJj4=;
	h=Subject:From:To:Date:From;
	b=eOIIBqTDp5CexzYrb1nXGVbPoeUM6zjt5AacfEa8qbA+FFirfs7mtWHG9+B2108gb
	 OUj3X6j58YaRkZ8YW8p4YLFSUaD/1QOpKFwD4Hp5XzwFj5N5r2Paz0ZzWeMycElsB9
	 QA6vKYkHlXpXGZw8TTc/KVYHMaPUqUH9ns0MuD3w=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DD0EC4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Sep 2025 09:10:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id AE13239D0C21
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Sep 2025 09:10:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.154 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 25 Sep 2025 09:10:38 +0000
Message-Id: <20250925091038.release-6.1.154@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.154
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.154.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.154.xz

Linux kernel version 6.1.154 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.154.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.154.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.154.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.154/v6.1.153

