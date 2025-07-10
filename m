Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D381272E5D
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Jul 2025 14:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752157518; cv=none; b=fIzHKLK4g9LiNHoFvjfN+Do2IqGcn19ih0lprh1z9naAV8GQ+72dUIrN3hUTJqYYY3feb3jl6RncsLv77tedtbuRGolo0Aeazy+qtuQVE0FVNArlVIh4d53U/eljrIjcJkqxIJVPB8yvnRodyiFUM8WWf7YQ5dTL/YJnnu7RvPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752157518; c=relaxed/simple;
	bh=ljkgc1dyKQceX39Y5vjMZLGKCS2SHfJWs44IuVWRUqs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=h7ozRxFhyNXeNnWfdV0xoGkEa65CKrwCBG7q7fTdI1tMdeA0kx+DQ23AVZ9H9NvFW8lTVTWWUgNiHND/VomT33Tuz8Ba283EmLZfXIae6tUiw57sr0OZHgHcxiF1U/ZGYt0ERi+LBgE6Tt+vpTroANNUY5ovWloISRY1Bf8l6Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752157518;
	bh=ljkgc1dyKQceX39Y5vjMZLGKCS2SHfJWs44IuVWRUqs=;
	h=Subject:From:To:Date:From;
	b=UpBKsJ/l8ptGd+oRB+EygMznMukHZIiCLeQgLptGJ8+EjjhuE9H8lwu6DnKbvzm16
	 5S2n2t8DYg/t3U6ZAAJoK7sFiTBrLtxYYvvFbkTTn4xLmYex8PSI1Gy+HNvigmBQ+m
	 ProZGmpeOKz63Ow2Pr5LsBBiQy1lgtDkhZNFJwQw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D368EC4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Jul 2025 14:25:16 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 37513383B261
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Jul 2025 14:25:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.97 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Jul 2025 14:25:38 +0000
Message-Id: <20250710142538.release-6.6.97@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.97
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.97.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.97.xz

Linux kernel version 6.6.97 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.97.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.97.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.97.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.97/v6.6.96

