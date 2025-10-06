Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB481F4622
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Oct 2025 09:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759743661; cv=none; b=jDf0WEYkO6sa/L9h+tYcAng6JuFM3Y8ijsGPovadrP5yeha+m3j2/qMYwliYGkJyqur7jUD7yJKV0N0QDTFyNjWT2hFq5/T1j1QYUEZoSYD93a1QjnUpcufRwbUUMyL7hcDq66KurMBi0gfgmhaYsVDTAB6Ke7acMasXCjBrF/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759743661; c=relaxed/simple;
	bh=EvvEWpxhrlHVfZZ7n94cBNTBGW/3RqOcjzbAKJzI/Bc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=TKIW5g8LCzhwaQbxV7PBOlezstB4tJVuYfwabpEwEHE+aKmsT7Q+ku4nOx3kTiP14Vp7YjmHQbOpjnpH006wqVv8y1oPe1ow9ZIGnL0WA84bZt/elTR+EefupEy3Xxibjrnu7V31WbZV/u9U47d3qnFQZcKrCPN1ipl17sJubig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1759743661;
	bh=EvvEWpxhrlHVfZZ7n94cBNTBGW/3RqOcjzbAKJzI/Bc=;
	h=Subject:From:To:Date:From;
	b=hkGX0F8ypwY0iqkl0Q8K/TWfGxvzVacCnT6HRV8bEdpF30ZcdWBw+W4g614r+3ent
	 1mGYVZ9CbxnW4fdaoilj3P8NpxPoUyoVAX7cPMn8Ev0JiKKJfitvS4OQXZ2e4wdIjs
	 YPaWOg7oTIWvf6U71cVompoknNfwf/aBl4+JscgQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E445C4CEF5
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Oct 2025 09:41:00 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id AE09D39D0C1A
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Oct 2025 09:40:51 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 06 Oct 2025 09:40:50 +0000
Message-Id: <20251006094050.release-6.16.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.11.xz

Linux kernel version 6.16.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.16.11/v6.16.10

