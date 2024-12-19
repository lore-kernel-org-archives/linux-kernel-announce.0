Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3910119993B
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734629218; cv=none; b=oW9dIZRAxnaT2AGFKwkFzFsj+5lYYzhN9BkY6Zb25DvM7huoY3XslD9NtNmbKcGsgczTK057iS94osGd3ZEXVuPT91ddohXYoqKzc+YTal/oFyT05d47cjFfI8WBG+tCRncADBmt3FP+9VK1da7IS9CnITtwxkI3LVUK9YE13SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734629218; c=relaxed/simple;
	bh=GK7oLtffLb/REhsFHlDlNgZdcZJc0/+w+24HLI06y8I=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Vrry4E/9GE9LoYVgMeU3GjHLO0GnC38Wdwe73doHxdkvmv6c+fo+VVSD2NWhIF3foHieeTr8V5j9uSoIYYkrqq0mp3f9JZga/dhrqmTp5RlRfyTyWe7uEkAQMVtsqsT0CbIPgmZFn3/LK2RPoOFtqHncSHGmgNzZDLfkigEugN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1734629218;
	bh=GK7oLtffLb/REhsFHlDlNgZdcZJc0/+w+24HLI06y8I=;
	h=Subject:From:To:Date:From;
	b=LEibFVRXLoiCc07PTLC4F/Iymt7PR4cU/Ll2bZgReiv2M/PaIcfMGzqI2fpST294h
	 sNGO1mqiyePib+VO0q01IdttWgmjQpBSnYf7C3CcVPzM+9JpaJhg2CdJfnLo9pENQ7
	 Os45WfgilUQCpXZt1MyKxovZDUX83UnEmL1lkqSM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDAA2C4CECE
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:26:57 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id AE1463806656
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:27:16 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.121 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Dec 2024 17:27:15 +0000
Message-Id: <20241219172715.release-6.1.121@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.121
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.121.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.121.xz

Linux kernel version 6.1.121 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.121.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.121.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.121.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.121/v6.1.120

