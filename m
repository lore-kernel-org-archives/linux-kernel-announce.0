Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF5164156D6
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785411063; cv=none; b=ZzrHz4zPW7x72xkh90FxzXKyYGtikWtGBl6p0IFTefO61ZooUfS2F0TUuPzqvCxbky01Fc6SX5dwV47FaGT1yQPsY4J/xu4Lmyq+bFxK4oqXZg8IUTmDC1oobCt/tjaHyQVBLXXkRcRpmNvHFvNGvStsL6dOSD9KqpPyrBlp66g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785411063; c=relaxed/simple;
	bh=BOYwl4Vm9T8DZANjdYT1VJ5pM8MeaG/xtq65exRlfqQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RIy7yXGqDsiNhVkGYZU9e/YaCiIo7r7IF0LnvZIgqduScZMkWmDEYDc2GuRV1B1mKYxUIcq7c3pbb/IhiiFZExUMcZRQabbBUT0QtobfasUff6DkZgGV2VWeExSDB3M6pPVPB3Y5N25Xks8jCAUg4R/doRugtJRJ4+Q/y2u3oqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1785411063;
	bh=BOYwl4Vm9T8DZANjdYT1VJ5pM8MeaG/xtq65exRlfqQ=;
	h=Subject:From:To:Date:From;
	b=EeouqfHIMK+XIoWSpMTH7l6zRkozJJT3upzYAmIwQof3U5nxXF45zpt1Gq3h5ZnDu
	 DiDta4v7U/88BZiJ2mTLJp1SPLw+ahu+mkPyvp9FvRzq84ElvVeWVcFA8Dq4HlSoli
	 SlMcL3zLPzRWs7Vjs3Yt38Nn9jDbQr9o8DzXTEJg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D07E1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:31:02 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 56B9F38119C8
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:30:27 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.41 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 30 Jul 2026 11:30:26 +0000
Message-Id: <20260730113026.release-6.18.41@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.41
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.41.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.41.xz

Linux kernel version 6.18.41 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.41.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.41.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.41.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.41/v6.18.40

