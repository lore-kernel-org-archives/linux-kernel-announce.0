Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A3DE19D88F
	for <linux-kernel-announce@vger.kernel.org>; Sun,  4 May 2025 23:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746400400; cv=none; b=WoLtk/BWqwl6QGFSAw+1vie+NPYSDIBTeObZEiEc5VxHvhLgPWdCGQWRWCSk8nTlFPRln1z8nMKNozPhD9AoVQocJ5F1Pv7aIMvgFJBaxECoQ7r3iO+bEz6zUC1c6RCPkw1yBrksga9lj7zUU2R+5vuUnksImp+UEHNxjn5ZnDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746400400; c=relaxed/simple;
	bh=E5Rv/43yQTsTmTtgQxr9u2NJ80YWXo0/MFjh3X7C/jA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=czYnYJM/xI/m5PXA+Ojwpo7WcMZ6AY1tghJF5lIar20TiVF2cFWS8Ju/dmYJ8ZFIPHWgdfPlPKpvZWm/WplaoAzdogf34dkTRFenR4LVutCamAGpu+jCPR7uteVPeTP+nTuDNpB16P+5aT2ShpZJWRUvq5s5YRDjqIwLL+0q398=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1746400400;
	bh=E5Rv/43yQTsTmTtgQxr9u2NJ80YWXo0/MFjh3X7C/jA=;
	h=Subject:From:To:Date:From;
	b=VkY0fXcfOH9H2T55uNmioBb9/ZNe84ei7ipw4/bnuVp3HeKnBLeWK5cBKsg+p6WXa
	 QcWLV40HZMDTtZ8uAwYSZxyxj1/OhVxvJlME/ikLW9TMeXwLBIDJX3CHa8nW2ZWW7U
	 YtK3y5HXPYGJ2XONv5oY610QIMPaWJR1WRvJZ5Dc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1856BC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun,  4 May 2025 23:13:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74764380DBF4
	for <linux-kernel-announce@vger.kernel.org>; Sun,  4 May 2025 23:13:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 04 May 2025 23:13:53 +0000
Message-Id: <20250504231353.release-6.15-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.15-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.15-rc5/v6.14

Linux kernel version 6.15-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.15-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.15-rc5/v6.14

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.15-rc5/v6.15-rc4

