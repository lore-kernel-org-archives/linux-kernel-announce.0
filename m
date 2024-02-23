Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08745168B9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 08:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708676142; cv=none; b=B6xbUx2YLwDZbc6o2veHMxasCtnTW4GYmLC4B2SVFo7jnxrXwKNudg+Ia+0kpb++8yMdvVMCCTC5QpW3ysGqzYesziihosJey6qHPU2QzKMOBjiuqtlMnnsb0kl36u6xExitSS0YQOixLvzY+olWmCl8qgqU1YVT/BDksUciJ7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708676142; c=relaxed/simple;
	bh=ON3pAwYwqmfSiaxKTNRVol+Lt2W7+ex1OiaLAZHoEwo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=erjEMNdEvSixyxKr/bRQauKfSUZq44n9YATB/4Nl3otcMByvNe+5C8kn6TfReUbBZYHkvf5T3fh2bTqoHOPrDXyX2VSlyjek1ysNAjj83QYHEiwPaflJPBWQp5OCZR3dxYtTPX2ZzZCu2qinIwY4VPcQLpJ7gKAZW3jA1tw8d4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1708676142;
	bh=ON3pAwYwqmfSiaxKTNRVol+Lt2W7+ex1OiaLAZHoEwo=;
	h=Subject:From:To:Date:From;
	b=GvHiyyLfR/YaO3JYv9FnAOCwjTXZ+zTAq/OALRY4FbbjWE88sUJH8TIi99y+XzdaF
	 UWy2pfewftQu6xKjEZ+pmdqmGWU8jijCLcEBcnIg+SpuylzOqQ4oN+9AxoYjfiTpu0
	 csWYqVP/Gs+L+vNQaZ9j4J5NbhricB4HrZ/QGa8c=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E24C433C7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 08:15:41 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 6BC5FD990CB
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 08:15:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.149 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 23 Feb 2024 08:15:41 +0000
Message-Id: <20240223081541.release-5.15.149@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.149
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.149.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.149.xz

Linux kernel version 5.15.149 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.149.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.149.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.149.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.149/v5.15.148

