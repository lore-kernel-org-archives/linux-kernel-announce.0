Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2189F3839A
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713006946; cv=none; b=EYbrkGj+1LHU96HzDi0mEqr7FOLmVKjRJ9eRI1kd37m0o4QVfBB2rKFx8ozspux6/o9UrxS0c4+aYogIQNItyf2ex/qYz36kl30Ko2egLl+K9/qEk93GzGRa20twUr/GsVVXme/amhPQnOVzP2tY0ik80bvqWFIT0yjE57WH6BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713006946; c=relaxed/simple;
	bh=+zCUvgd6fTY+ScZ6MvdzXBrW0eKnRKWzwLS95PHNkW4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=scCetdJUU9qTfeKrztbLAm4Ixn/h1dtJYSN5bKeCylI9SQbSf6o2MPpMqKKllhdoePCdHfhyuA3+VfQXLDGEwO9jaAnKQPFGSHjf9H94EfZC3YHjM+n2x0fnEd/49xSl7LuOA99/k09GC4mRscKxCXzQqqqpQK9Qnj/Xt2akbBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1713006946;
	bh=+zCUvgd6fTY+ScZ6MvdzXBrW0eKnRKWzwLS95PHNkW4=;
	h=Subject:From:To:Date:From;
	b=dfcLaY5iari5w9KPRIn+DW3UZArQK7541oS5ClTcgzaRpa2+E1TpFdYks/X+SnzT6
	 T+1WOdRV1a0ABdZ7iFvzR8wvJ3Yh2K86CzrmiyKwKgMZ2+2NCy6Xp/qvdoBW5vtu5n
	 UVlyUfzwoLI3SHTcypEKhy1Ca40j2IGyDYrqtaAg=
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD43C2BD10
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:15:45 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 97706C43140
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:15:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.274 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 13 Apr 2024 11:15:45 +0000
Message-Id: <20240413111545.release-5.4.274@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.274
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.274.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.274.xz

Linux kernel version 5.4.274 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.274.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.274.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.274.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.274/v5.4.273

