Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B347F2E11A3
	for <linux-kernel-announce@vger.kernel.org>; Sun, 15 Jun 2025 21:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750022671; cv=none; b=XYc9KHTQN4seyLwuaBFs6hUgRuU9r0b3LKI6P8aPZ7tqa1cATpXVKmelUiOAum1zRxVTNttzaYlmLwTVW7O3pbF1n0zoy6vwFc2lb1S6WSUOvFg0WEYeyecFE60hocjYJES8+ThU1DN8zvSOK678olfTVRU3xotKS/IBnNGhxLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750022671; c=relaxed/simple;
	bh=EHnEt+aEFFoxUasD/RH1WChpWCGZgpG6oCLHBYLqTLc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SetlJNxfhP0H7UVYb9Rv2HcB0APQ3pQuqr7jP8IqcjB0RPMKOKM2x8oXJSpSE3ebDJu+DzJf5ZS+pD5X/VD0f0NWWv/xSKZvWgKB9TT0FkKi4pa7lcGJhRGn14jG38PjVXB6l4m7lNqpKXs2PwVaVdSOeLoPimJrZpiRm6um5bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1750022671;
	bh=EHnEt+aEFFoxUasD/RH1WChpWCGZgpG6oCLHBYLqTLc=;
	h=Subject:From:To:Date:From;
	b=tMCY2UvpUi/DFpyGMBKcUi4K7u7lPeK/0T2CxW+cAvAZu3Bakt+Ye1T8QboeURqyT
	 VyHF8FrN/lNJjX/VTdLYlKvZgItJnwlgXGKKhGd+a6jyugTTdva42WoowRyYbhAxml
	 kI4MNL6c2+pdeOvP/8YHjxBLCEeD/3Efo6o2dt1k=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84A05C4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Sun, 15 Jun 2025 21:24:31 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B51EF38111D4
	for <linux-kernel-announce@vger.kernel.org>; Sun, 15 Jun 2025 21:25:01 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 15 Jun 2025 21:25:00 +0000
Message-Id: <20250615212500.release-6.16-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.16-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.16-rc2/v6.15

Linux kernel version 6.16-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.16-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.16-rc2/v6.15

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.16-rc2/v6.16-rc1

