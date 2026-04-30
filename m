Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F47C2F8BF0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777541766; cv=none; b=s6uKlTJslVNEJ2gFlg9odYhJElLQQtEyUdi0WfsTGtyOGKElioZL5xF1+9wWc+X/Fj+N88m0dtHcEi2FtXn5bzPL/7zv3RtC3YE1SJzbJfp65ew/WBy+wM6MAp75eiaw3Hgrkb9VIj4zCxVZkcS+WyWXXoLEVN9izctL956FRDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777541766; c=relaxed/simple;
	bh=aeU9ZuoLTje7bRXceyUffujCLHhXw4U4q2pZhMTS3Ow=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=rHjyF9/TwrJ+eZo7YtLdWr1O1EX3Dlp5OZDssdAfvZtSOPCeouSVaAtsz8nheHgi1DHnvqe85w4F0wbsR4EQ6EGCkxrSEx4Y1uZ9cKxAKvd6EOTQMzgN0r5W8n2hKU3gjayllViJrYk/DE/Peu6UvM+iSxn4pUfcA94bvNJJdcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1777541766;
	bh=aeU9ZuoLTje7bRXceyUffujCLHhXw4U4q2pZhMTS3Ow=;
	h=Subject:From:To:Date:From;
	b=AEUXZeKd32oG+kS/0oeLKQaLScYvtF90Sr6ASRKGy4g4tDCRT67bPPoDbwmIEfvkj
	 UVeACKrNWblISOKYGMQewfLGWFF7jKw4mpFtVYmHuIoQTRQeDgKAdLmJdG6+QxcsJn
	 Ao99pZOyATUTOqSMyBRy2ikHn5xXp5d8GZ49KMck=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 153CDC2BCB3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:36:06 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 058FE380A960
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:35:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.85 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 30 Apr 2026 09:35:20 +0000
Message-Id: <20260430093520.release-6.12.85@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.85
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.85.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.85.xz

Linux kernel version 6.12.85 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.85.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.85.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.85.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.85/v6.12.84

