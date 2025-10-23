Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9EF267714
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Oct 2025 14:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761229860; cv=none; b=aobsK8qOvctX/a0HfDQCZG0DYGaktWEo/ZBB3j2CWcOW4rH7erUMzdQBq3P/d6kbifQ7UpjPiNPs0BYLxnjNpIrE60Re9HZdk+D5/G4LbVfY48T/dtpjHeLs1cYcOB3WCyfl+lezUccd771PiOlpI6YRyfXc+G3AoBTz66IQ9+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761229860; c=relaxed/simple;
	bh=Ni4aDMJxIHfqyjH5e0meFCcvLZV7wooXepsYfA7pk5k=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GIKUafjs1Y7mlFC80ALNjlocVGztHlqwkfw0uWkdX+41O2uQPL3x/v3V+uK+45XA0+9ZqlJd6iaJrqZP9U5f8fuHuvsTlQsGpV0kG3mgzCUbu/8fVxDvRGxIJXW/Y5anSOvZIQgkmRZLJJUIr5lZL3KchH5DQvVG05k1ST/Ppp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1761229860;
	bh=Ni4aDMJxIHfqyjH5e0meFCcvLZV7wooXepsYfA7pk5k=;
	h=Subject:From:To:Date:From;
	b=KNbXQo//OF00j3dV5hHZiMFyyTDeiiXRS49SW8wpP7TobcCi/gv+tTmWwG646O7so
	 xJRTUiHjdGXaUch/T5MhpzSjanRvFJUjCoV4w2YZC3EwjPFDYGLmGmWAFu4esobLyU
	 jKaEkCATBiIqpxzntV+FCsjlDzMKD3f8UlLwNe6E=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD31FC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Oct 2025 14:31:00 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 711953809A97
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Oct 2025 14:30:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.114 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 23 Oct 2025 14:30:40 +0000
Message-Id: <20251023143040.release-6.6.114@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.114
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.114.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.114.xz

Linux kernel version 6.6.114 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.114.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.114.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.114.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.114/v6.6.113

