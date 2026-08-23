Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285EB376475
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787488122; cv=none; b=fr5LOhQPvIGg9ooq3BDMltyW7RuwNfksJPH7sgi/uGaC96J8DZwoNVcObgMjF9CzvJcKD6Lu2lxtDFqEUXgqmZ5qCwwR4CpLowuHV0ucvrvipV5ksrDcaTA83NaLts28jszAuqHFXfo5wRRYDpP+ngWMufbqFZjfUJqTIfyJAcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787488122; c=relaxed/simple;
	bh=B6j6elob8AZ8Xg5mLkqobQ7yVBRjdnfzRQiLl7DMc5E=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ciHeBaeIxliFElMyUBNZQLZApRqFyE/xSJ58x8bsY44DAzhZqHux3W5bwc5mqT3a0Gfh1JyN6JO8SKTBGEo/1L7VF9hMnStsaY+5CxC73tIeIF35ZpZ/68zJ2neZazaJXirk75Sfq01Pve59inFfY9bsoMfJMUgSthmHNjKksso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787488122;
	bh=B6j6elob8AZ8Xg5mLkqobQ7yVBRjdnfzRQiLl7DMc5E=;
	h=Subject:From:To:Date:From;
	b=t6yQo0NhgHFjXbd+7jTWh9jutqmt8BBYKn5eDFyerNHWvnYgZU85GTJo3LacTqKLq
	 gIIF04g/k9qPw5uYpEaaCCcVcB6uyzkB4Mad3r32oHayJenhevsEL6Rk9/wXF/w+VC
	 AxOsnH1u1cmJufEXiyU3fCl4I15yRx4VDGOqU0Po=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCDD61F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:28:40 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 59487380CFE6
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:27:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.266 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 23 Aug 2026 12:27:49 +0000
Message-Id: <20260823122749.release-5.10.266@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.266
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.266.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.266.xz

Linux kernel version 5.10.266 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.266.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.266.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.266.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.266/v5.10.265

